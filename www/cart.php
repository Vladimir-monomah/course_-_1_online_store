<?php
   define('it', true);  
   include("include/db_connect.php");
   include("function/function.php");
   session_start();
   include("include/auth_cookie.php");
   include("function/localization.php");
  
     $id = clear_string($_GET["id"]);
     $action = clear_string($_GET["action"]);
    $user_uid = isset($_SESSION['id']) ? $_SESSION['id'] : $_SERVER['REMOTE_ADDR'];
   switch ($action) {

      case 'clear':
        $clear = mysql_query("DELETE FROM cart WHERE cart_ip = '{$user_uid}'",$link);     
      break;
        
        case 'delete':     
        $delete = mysql_query("DELETE FROM cart WHERE cart_id = '$id' AND cart_ip = '{$user_uid}'",$link);        
        break;
        
    case 'pay':
    // Подтверждение оплаты товара в корзине и его удаление из корзины
    mysql_query("UPDATE orders SET order_pay = 'accepted' WHERE order_id='".$_GET["order_id"]."'",$link) 
    or die (mysql_error());
	
    mysql_query("DELETE FROM cart WHERE cart.cart_ip = '{$user_uid}'",$link) 
	or die (mysql_error());

    header("Location: index.php");
    die();
    break;
  }
    
if (isset($_POST["submitdata"]))
{
if ( $_SESSION['auth'] == 'yes_auth' ) 
 {
        
    mysql_query("INSERT INTO orders(order_datetime,  order_confirmed,order_dostavka,order_fio,order_address,order_phone,order_note,order_email)
            VALUES(  
                             NOW(),
                             'no',
                            '".$_POST["order_delivery"]."',          
              '".$_SESSION['auth_surname'].' '.$_SESSION['auth_name'].' '.$_SESSION['auth_patronymic']."',
                            '".$_SESSION['auth_address']."',
                            '".$_SESSION['auth_phone']."',
                            '".$_POST['order_note']."',
                            '".$_SESSION['auth_email']."'                              
                )",$link) or die(mysql_error());

 }else
 {
$_SESSION["order_fio"] = $_POST["order_fio"];
$_SESSION["order_email"] = $_POST["order_email"];
$_SESSION["order_phone"] = $_POST["order_phone"];
$_SESSION["order_address"] = $_POST["order_address"];

    mysql_query("INSERT INTO orders(order_datetime,order_confirmed,order_dostavka,order_fio,order_address,order_phone,order_note,order_email)
            VALUES(  
                             NOW(),
                            'no',
                            '".clear_string($_POST["order_delivery"])."',          
              '".clear_string($_POST["order_fio"])."',
                            '".clear_string($_POST["order_address"])."',
                            '".clear_string($_POST["order_phone"])."',
                            '".clear_string($_POST["order_note"])."',
                            '".clear_string($_POST["order_email"])."'                   
                )",$link) or die(mysql_error());    
 }
           
$_SESSION["order_delivery"] = $_POST["order_delivery"];        
$_SESSION["order_note"] = $_POST["order_note"];       
 $_SESSION["order_id"] = mysql_insert_id();                          
                            
$result = mysql_query("SELECT * FROM cart WHERE cart_ip = '{$user_uid}'",$link);
If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);    

do{

    mysql_query("INSERT INTO buy_products(buy_id_order,buy_id_product,buy_count_product)
            VALUES(  
                            '".$_SESSION["order_id"]."',          
              '".$row["cart_id_products"]."',
                            '".$row["cart_count"]."'                   
                )",$link);



} while ($row = mysql_fetch_array($result));
}
                            
header("Location: cart.php?action=completion");
}      


$result = mysql_query("SELECT * FROM cart,table_products WHERE cart.cart_ip = '{$user_uid}' AND table_products.products_id = cart.cart_id_products",$link);
If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);

do
{ 
$int = $int + ($row["price"] * $row["cart_count"]); 
}
 while ($row = mysql_fetch_array($result));
 $itogpricecart = $int;
}     
?>
<!--Элемент DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Атрибут языка -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <!--кодировка -->
  <meta http-equiv="content-type" content="text/html; charset=windows-1251" />
  <!--стили -->
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!--Подключение ползунка -->
    <link href="trackbar/trackbar.css" rel="stylesheet" type="text/css" />
    <!--иконка -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    
    <!--подключение скриптов -->
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script> 
    <script type="text/javascript" src="/js/jcarousellite_1.0.1.js"></script> 
    <script type="text/javascript" src="/js/shop-script.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="/trackbar/jquery.trackbar.js"></script>
    <script type="text/javascript" src="/js/TextChange.js"></script>
    
    <script src="code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="https://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
<script type="text/javascript">
        $(document).ready(function(){
                ymaps.ready(function(){
                    var geolocation = ymaps.geolocation;
                    $.ajax({
                        url:'translate.php?text='+geolocation.city,
                        success: function(responce){
                            $('#tow').html('<?php echo localize_text('Ваш город...', $_SESSION["lang"], $link); ?>'+ responce);
                        }
                    });
                    
                });
            });
</script>

  <title><?php echo localize_text('Корзина заказов', $_SESSION["lang"], $link); ?></title>
</head>
<body>
<div id="block-body">
	<?php  
		include("include/block-header.php");    
	?>

<div id="block-right" class="block-right">
	<?php	
		include("include/block-category.php");
		include("include/block-parameter.php");
		include("include/block-news.php");
	?>
	</div>
<div id="block-content">

<?php

  $action = clear_string($_GET["action"]);
  switch ($action) {

      case 'oneclick':
   
  echo ' 
   <div id="block-step">  
   <div id="name-step">  
   <ul type="none">
   <li><a class="active" >Корзина товаров</a></li>
   <li><span>&rarr;</span></li>
   <li><a>Контактная информация</a></li>
   <li><span>&rarr;</span></li>
   <li><a>Завершение</a></li> 
   </ul>  
   </div>  
   <p>Шаг 1 из 3</p>
   <a href="cart.php?action=clear" >Удалить все товары</a>
   </div>
';
  
   
$result = mysql_query("SELECT * FROM cart,table_products WHERE cart.cart_ip = '{$user_uid}' AND table_products.products_id = cart.cart_id_products",$link);

If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);

   echo '  
   <div id="header-list-cart">    
   <div id="head1" >Изображение</div>
   <div id="head2" >Информация по товару</div>
   <div id="head3" >Кол-во</div>
   <div id="head4" >Цена</div>
   </div> 
   ';

do
{

$int = $row["cart_price"] * $row["cart_count"];
$all_price = $all_price + $int;

if  (strlen($row["image"]) > 0 && file_exists("./uploads_images/".$row["image"]))
{
$img_path = './uploads_images/'.$row["image"];
$max_width = 100; 
$max_height = 100; 
 list($width, $height) = getimagesize($img_path); 
$ratioh = $max_height/$height; 
$ratiow = $max_width/$width; 
$ratio = min($ratioh, $ratiow); 

$width = intval($ratio*$width); 
$height = intval($ratio*$height);    
}else
{
$img_path = "/images/noimages.jpeg";
$width = 120;
$height = 105;
} 

echo '

<div class="block-list-cart">

<div class="img-cart">
<p align="center"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" /></p>
</div>
<div class="title-cart">
<p><a href="">'.$row["title"].'</a></p>
<p class="cart-mini-features">
'.$row["mini_features"].'
</p>
</div>

<div class="count-cart">
<ul class="input-count-style" type="none">

<li>
<p align="center" iid="'.$row["cart_id"].'" class="count-plus">+</p>
</li>

<li>
<p align="center"><input id="input-id'.$row["cart_id"].'" iid="'.$row["cart_id"].'" class="count-input" maxlength="3" type="text" value="'.$row["cart_count"].'" /></p>
</li>

<li>
<p align="center" iid="'.$row["cart_id"].'" class="count-minus">-</p>
</li>

</ul>
</div>

<div id="tovar'.$row["cart_id"].'" class="price-product"><h5><span class="span-count" >'.$row["cart_count"].'</span> x <span>'.$row["cart_price"].'</span></h5><p price="'.$row["cart_price"].'" >'.group_numerals($int).' руб</p></div>
<div class="delete-cart"><a  href="cart.php?id='.$row["cart_id"].'&action=delete" ><img src="/images/bsk_item_del.png" /></a></div>

<div id="bottom-cart-line"></div>
</div>


';

    
}
 while ($row = mysql_fetch_array($result));
 
 echo '
 <h2 class="itog-price" align="right">Итого: <strong>'.group_numerals($all_price).'</strong> руб</h2>
 <p align="center" class="button-next" ><a href="cart.php?action=confirm" >Дальше</a></p> 
 ';
  
} 
else
{
    echo '<h3 id="clear-cart" align="center">Корзина пуста</h3>';
}


   
      break;
        
        case 'confirm':     
     
    echo ' 
   <div id="block-step"> 
   <div id="name-step">  
   <ul type="none">
   <li><a href="cart.php?action=oneclick" >Корзина товаров</a></li>
   <li><span>&rarr;</span></li>
   <li><a class="active" >Контактная информация</a></li>
   <li><span>&rarr;</span></li>
   <li><a>Завершение</a></li> 
   </ul>  
   </div> 
   <p>Шаг 2 из 3</p>

   </div>

   '; 
   

if ($_SESSION['order_delivery'] == "По почте") $chck1 = "checked";
if ($_SESSION['order_delivery'] == "Курьером") $chck2 = "checked";
if ($_SESSION['order_delivery'] == "Самовывоз") $chck3 = "checked"; 
 echo '
<h3 class="title-h3" >Способы доставки:</h3>
<form method="post">
<ul id="info-radio" type="none">
<li>
<input type="radio" name="order_delivery" class="order_delivery" id="order_delivery1" value="По почте" '.$chck1.'  />
<label class="label_delivery" for="order_delivery1">По почте</label>
</li>
<li>
<input type="radio" name="order_delivery" class="order_delivery" id="order_delivery2" value="Курьером" '.$chck2.' />
<label class="label_delivery" for="order_delivery2">Курьером</label>
</li>
<li>
<input type="radio" name="order_delivery" class="order_delivery" id="order_delivery3" value="Самовывоз" '.$chck3.' />
<label class="label_delivery" for="order_delivery3">Самовывоз</label>
</li>
</ul>
<h3 class="title-h3" >Информация для доставки:</h3>

<p id="form-error" style="display:none"></p>
<ul id="info-order" type="none">
';
  if ( $_SESSION['auth'] != 'yes_auth' ) 
{
echo '
<li><label for="order_fio"><span>*</span>ФИО</label><input type="text" name="order_fio" id="order_fio" value="'.$_SESSION["order_fio"].'" /><span class="order_span_style" >Пример: Иванов Иван Иванович</span></li>
<li><label for="order_email"><span>*</span>E-mail</label><input type="text" name="order_email" id="order_email" value="'.$_SESSION["order_email"].'" /><span class="order_span_style" >Пример: ivanov@mail.ru</span></li>
<li><label for="order_phone"><span>*</span>Телефон</label><input type="text" name="order_phone" id="order_phone" value="'.$_SESSION["order_phone"].'" /><span class="order_span_style" >Пример: 8 950 100 12 34</span></li>
<li><label class="order_label_style" for="order_address"><span>*</span>Адрес<br /> доставки</label><input type="text" name="order_address" id="order_address" value="'.$_SESSION["order_address"].'" /><span>Пример: г. Москва,<br /> ул Интузиастов д 18, кв 58</span></li>
';
}
echo '
<li><label class="order_label_style" for="order_note">Примечание</label><textarea name="order_note"  >'.$_SESSION["order_note"].'</textarea><span>Уточните информацию о заказе.<br />  Например, удобное время для звонка<br />  нашего менеджера</span></li>
</ul>
<p align="center" ><input type="submit" name="submitdata" id="confirm-button-next" value="Дальше" /></p>
</form>

 ';      
      
        break;
        
        case 'completion': 

    echo ' 
   <div id="block-step"> 
   <div id="name-step">  
   <ul type="none">
   <li><a href="cart.php?action=oneclick" >Корзина товаров</a></li>
   <li><span>&rarr;</span></li>
   <li><a href="cart.php?action=confirm" >Контактная информация</a></li>
   <li><span>&rarr;</span></li>
   <li><a class="active" >Завершение</a></li> 
   </ul>  
   </div> 
   <p>Шаг 3 из 3</p>

   </div>

<h3>Конечная информация:</3>
   '; 

if ( $_SESSION['auth'] == 'yes_auth' ) 
    {
echo '
<ul id="list-info" type="none">
<li><strong>Способ доставки:</strong>'.$_SESSION['order_delivery'].'</li>
<li><strong>Email:</strong>'.$_SESSION['auth_email'].'</li>
<li><strong>ФИО:</strong>'.$_SESSION['auth_surname'].' '.$_SESSION['auth_name'].' '.$_SESSION['auth_patronymic'].'</li>
<li><strong>Адрес доставки:</strong>'.$_SESSION['auth_address'].'</li>
<li><strong>Телефон:</strong>'.$_SESSION['auth_phone'].'</li>
<li><strong>Примечание: </strong>'.$_SESSION['order_note'].'</li>
</ul>

';
   }else
   {
echo '
<ul id="list-info" type="none">
<li><strong>Способ доставки:</strong>'.$_SESSION['order_delivery'].'</li>
<li><strong>Email:</strong>'.$_SESSION['order_email'].'</li>
<li><strong>ФИО:</strong>'.$_SESSION['order_fio'].'</li>
<li><strong>Адрес доставки:</strong>'.$_SESSION['order_address'].'</li>
<li><strong>Телефон:</strong>'.$_SESSION['order_phone'].'</li>
<li><strong>Примечание: </strong>'.$_SESSION['order_note'].'</li>
</ul>

';    
}
 echo '
<h2 class="itog-price" align="right">Итого <strong>'.$itogpricecart.'</strong> руб</h2>
  <p align="center" class="button-next" ><a href="cart.php?action=pay&order_id='.$_SESSION["order_id"].'" >Оплатить</a></p> 
 
 '; 


    
        break;
        
      default:  
       
   echo ' 
   <div id="block-step">  
   <div id="name-step">  
   <ul type="none">
   <li><a class="active" >Корзина товаров</a></li>
   <li><span>&rarr;</span></li>
   <li><a>Контактная информация</a></li>
   <li><span>&rarr;</span></li>
   <li><a>Завершение</a></li> 
   </ul>  
   </div>  
   <p>Шаг 1 из 3</p>
   <a href="cart.php?action=clear" >Удалить все товары</a>
   </div>
';
  
   
$result = mysql_query("SELECT * FROM cart,table_products WHERE cart.cart_ip = '{$user_uid}' AND table_products.products_id = cart.cart_id_products",$link);

If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);

   echo '  
   <div id="header-list-cart">    
   <div id="head1" >Изображение</div>
   <div id="head2" >Наименование товара</div>
   <div id="head3" >Кол-во</div>
   <div id="head4" >Цена</div>
   </div> 
   ';

do
{
    $int = $row["cart_price"] * $row["cart_count"];
$all_price = $all_price + $int;

if  (strlen($row["image"]) > 0 && file_exists("./uploads_images/".$row["image"]))
{
$img_path = './uploads_images/'.$row["image"];
$max_width = 100; 
$max_height = 100; 
 list($width, $height) = getimagesize($img_path); 
$ratioh = $max_height/$height; 
$ratiow = $max_width/$width; 
$ratio = min($ratioh, $ratiow); 

$width = intval($ratio*$width); 
$height = intval($ratio*$height);    
}else
{
$img_path = "/images/noimages.jpeg";
$width = 120;
$height = 105;
} 

echo '

<div class="block-list-cart">

<div class="img-cart">
<p align="center"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" /></p>
</div>

<div class="title-cart">
<p><a href="">'.$row["title"].'</a></p>
<p class="cart-mini-features">
'.$row["mini_features"].'
</p>
</div>

<div class="count-cart">
<ul class="input-count-style" type="none">

<li>
<p align="center" iid="'.$row["cart_id"].'" class="count-minus">-</p>
</li>

<li>
<p align="center"><input id="input-id'.$row["cart_id"].'" iid="'.$row["cart_id"].'" class="count-input" maxlength="3" type="text" value="'.$row["cart_count"].'" /></p>
</li>

<li>
<p align="center" iid="'.$row["cart_id"].'" class="count-plus">+</p>
</li>

</ul>
</div>

<div id="tovar'.$row["cart_id"].'" class="price-product"><h5><span class="span-count" >'.$row["cart_count"].'</span> x <span>'.$row["cart_price"].'</span></h5><p price="'.$row["cart_price"].'" >'.group_numerals($int).' руб</p></div>
<div class="delete-cart"><a  href="cart.php?id='.$row["cart_id"].'&action=delete" ><img src="/images/bsk_item_del.png" /></a></div>

<div id="bottom-cart-line"></div>
</div>


';

    
}
 while ($row = mysql_fetch_array($result));
 
 echo '
 <h2 class="itog-price" align="right">Итого: <strong>'.group_numerals($all_price).'</strong> руб</h2>
 <p align="center" class="button-next" ><a href="cart.php?action=confirm" >Дальше</a></p> 
 ';
  
} 
else
{
    echo '<h3 id="clear-cart" align="center">В корзине товара нет! Заполние пожалуйста корзину!</h3>';
}
        break;    
        
}
  
?>

</div>

<?php  
    include("include/block-footer.php");    
?>
</div>

</body>
<!--consultant-web--><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/chat.css" /><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/settings.css" /><script type="text/javascript">document.write('<scr' + 'ipt type="text/javascript" src="https://spravka.000webhostapp.com/consultant/js/consultant.js.php?ref='+escape(document.referrer)+'&title='+encodeURIComponent(document.getElementsByTagName("title")[0].text)+'"></scr' + 'ipt>');</script><div id="ok_con_web_chat"><div id="ok_button"></div><div id="ok_consultant"></div></div><!--consultant-web-->
</html>