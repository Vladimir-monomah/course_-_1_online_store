<?php	
define('it', true);	
   include("include/db_connect.php");
   include("function/function.php");
   session_start();
   include("include/auth_cookie.php");
   include("function/localization.php");
  
   $id = clear_string($_GET["id"]); 

     $seoquery = mysql_query("SELECT seo_words,seo_description,type_tovara FROM table_products WHERE products_id='$id' AND visible='1'",$link);
     
     If (mysql_num_rows($seoquery) > 0)
     {
        $resquery = mysql_fetch_array($seoquery);
     }   
   
  If ($id != $_SESSION['countid'])
{
$querycount = mysql_query("SELECT count FROM table_products WHERE products_id='$id'",$link);
$resultcount = mysql_fetch_array($querycount); 

$newcount = $resultcount["count"] + 1;

$update = mysql_query ("UPDATE table_products SET count='$newcount' WHERE products_id='$id'",$link);  
}

$_SESSION['countid'] = $id; 
      
?>
<!--Элемент DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Атрибут языка -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <!--кодировка -->
	<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
	<!--полная характеристика товара -->
    <meta name="Description" content="<?php echo $resquery["seo_description"]; ?>"/>
    <!--ключевые слова -->
    <meta name="keywords" content="<?php echo $resquery["seo_words"]; ?>" /> 
    
    <!--подключение стилей -->
    <link href = "./css/style.css" rel="stylesheet" type="text/css" />
    <!--подключение ползунка -->
    <link href="trackbar/trackbar.css" rel="stylesheet" type="text/css" />
    <!--иконка сайта -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    
    <!--подключение скриптов -->
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script> 
    <script type="text/javascript" src="/js/jcarousellite_1.0.1.js"></script> 
    <script type="text/javascript" src="/js/shop-script.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="/trackbar/jquery.trackbar.js"></script>
    <script type="text/javascript" src="/js/TextChange.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/fancybox/jquery.fancybox.css" />
    <script type="text/javascript" src="/fancybox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="/js/jTabs.js"></script>
    
    <script src="code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="https://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
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
    
		<title><?php echo localize_text('АИС "Всегда на связи"', $_SESSION["lang"], $link); ?></title>


<script type="text/javascript">
$(document).ready(function(){
 
    $("ul.tabs").jTabs({content: ".tabs_content", animate: true, effect:"fade"}); 
    $(".image-modal").fancybox(); 
    $(".send-review").fancybox();
	
});	
</script> 
</head>
<body>
<div id="block-body">
<?php	
    include("include/block-header.php");    
?>
<div class="right-block-menu-container">
	<input type="checkbox" name="right-block-menu" id="toggle-right-block" class="toggle-right-block">
	<label for="toggle-right-block" class="toggle-right-block header-title">Меню</label>
	
	<div id="block-right" class="block-right">
	<?php	
		include("include/block-category.php");
		include("include/block-parameter.php");
		include("include/block-news.php");
	?>
	</div>
</div>
<div id="block-content">
<?php
$result1 = mysql_query("SELECT * FROM table_products WHERE products_id='$id' AND visible='1'",$link);
If (mysql_num_rows($result1) > 0)
{
$row1 = mysql_fetch_array($result1);
do
{   
if  (strlen($row1["image"]) > 0 && file_exists("./uploads_images/".$row1["image"]))
{
$img_path = './uploads_images/'.$row1["image"];
$max_width = 300; 
$max_height = 300; 
 list($width, $height) = getimagesize($img_path); 
$ratioh = $max_height/$height; 
$ratiow = $max_width/$width; 
$ratio = min($ratioh, $ratiow); 

$width = intval($ratio*$width); 
$height = intval($ratio*$height);    
}else
{
$img_path = "/images/no-image.png";
$width = 110;
$height = 200;
}     

// Количество отзывов 
$query_reviews = mysql_query("SELECT * FROM table_reviews WHERE products_id = '$id' AND moderat='1'",$link);  
$count_reviews = mysql_num_rows($query_reviews);

$type_tovara;
if($resquery["type_tovara"] == 'mobile')
{
	$type_tovara = 'Мобильные телефоны';
}
else if($resquery["type_tovara"] == 'notebook')
{
	$type_tovara = 'Ноутбуки';
}
else if($resquery["type_tovara"] == 'notepad')
{
	$type_tovara = 'Планшеты';
}
else if($resquery["type_tovara"] == 'pc')
{
	$type_tovara = 'Компьютеры';
}

echo  '

<div id="block-breadcrumbs-and-rating">
<p id="nav-breadcrumbs2"><a href="view_cat.php?type='.$resquery["type_tovara"].'">'.localize_text($type_tovara, $_SESSION["lang"], $link).'</a> \ <span>'.$row1["brand"].'</span></p>
<div id="block-like">
<p id="likegood" tid="'.$id.'" >'.localize_text('Нравится', $_SESSION["lang"], $link).'</p><p id="likegoodcount" >'.$row1["yes_like"].'</p>
</div>
</div>

<div id="block-content-info">

<img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" />

<div id="block-mini-description">

<p id="content-title">'.localize_text($row1["title"], $_SESSION["lang"], $link).'</p>

<ul class="reviews-and-counts-content" type="none">
<li><img src="/images/eye-icon.png" /><p>'.$row1["count"].'</p></li>
<li><img src="/images/comment-icon.png" /><p>'.$count_reviews.'</p></li>
</ul>


<p id="style-price" >'.group_numerals($row1["price"]).' '.localize_text('руб', $_SESSION["lang"], $link).'</p>

<a class="add-cart" id="add-cart-view" tid="'.$row1["products_id"].'" ></a>

<p id="content-text">'.localize_text($row1["mini_description"], $_SESSION["lang"], $link).'</p>

</div>

</div>

';

   
}
 while ($row1 = mysql_fetch_array($result1));


 $result = mysql_query("SELECT * FROM uploads_images WHERE products_id='$id'",$link);
If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);
echo '<div id="block-img-slide">
      <ul type="none">';
do
{
    
$img_path = './uploads_images/'.$row["image"];
$max_width = 70; 
$max_height = 70; 
 list($width, $height) = getimagesize($img_path); 
$ratioh = $max_height/$height; 
$ratiow = $max_width/$width; 
$ratio = min($ratioh, $ratiow); 

$width = intval($ratio*$width); 
$height = intval($ratio*$height);    
    
    
echo '
<li>
<a class="image-modal" href="#image'.$row["id"].'"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" /></a>
</li>
<a style="display:none;" class="image-modal" rel="group" id="image'.$row["id"].'" ><img  src="./uploads_images/'.$row["image"].'" /></a>
';
}
 while ($row = mysql_fetch_array($result));
 echo '
 </ul>
 </div>    
        ';
}

$result = mysql_query("SELECT * FROM table_products WHERE products_id='$id' AND visible='1'",$link);
$row = mysql_fetch_array($result);

echo '

<ul class="tabs" type="none">
    <li><a class="active" href="#" >'.localize_text('Информация по товару', $_SESSION["lang"], $link).'</a></li>
    <li><a href="#" >'.localize_text('Характеристики', $_SESSION["lang"], $link).'</a></li>
    <li><a href="#" >'.localize_text('Отзывы', $_SESSION["lang"], $link).'</a></li>   
</ul>

<div class="tabs_content">

<div>'.$row["description"].'</div>
<div>'.$row["features"].'</div>
<div id="reviews_content">
<p id="link-send-review" ><a class="send-review" href="#send-review" >'.localize_text('Написать отзыв о товаре', $_SESSION["lang"], $link).'</a></p>
';

$query_reviews = mysql_query("SELECT * FROM table_reviews WHERE products_id='$id' ORDER BY reviews_id DESC",$link);

If (mysql_num_rows($query_reviews) > 0)
{
$row_reviews = mysql_fetch_array($query_reviews);
do
{

echo '
<div class="block-reviews" >
<p class="author-date" ><strong>'.$row_reviews["name"].'</strong>, '.$row_reviews["date"].'</p>
<img src="/images/plus-reviews.png" />
<p class="textrev" >'.$row_reviews["good_reviews"].'</p>
<img src="/images/minus-reviews.png" />
<p class="textrev" >'.$row_reviews["bad_reviews"].'</p>

<p class="text-comment">'.$row_reviews["comment"].'</p>
</div>

';
        
}
 while ($row_reviews = mysql_fetch_array($query_reviews));
}
else
{
    echo '<p class="title-no-info" >'.localize_text('Отзывов нет', $_SESSION["lang"], $link).'</p>';
} 



echo '
</div>

</div>


    <div id="send-review" >
    
    <p align="right" id="title-review">'.localize_text('Публикация отзыва производится после предварительной модерации.', $_SESSION["lang"], $link).'</p>
    
    <ul type="none">
    <li><p align="right"><label id="label-name" >'.localize_text('Имя', $_SESSION["lang"], $link).'<span>*</span></label><input maxlength="15" type="text"  id="name_review" /></p></li>
    <li><p align="right"><label id="label-good" >'.localize_text('Достоинства', $_SESSION["lang"], $link).'<span>*</span></label><textarea id="good_review" ></textarea></p></li>    
    <li><p align="right"><label id="label-bad" >'.localize_text('Недостатки', $_SESSION["lang"], $link).'<span>*</span></label><textarea id="bad_review" ></textarea></p></li>     
    <li><p align="right"><label id="label-comment" >'.localize_text('Комментарий', $_SESSION["lang"], $link).'</label><textarea id="comment_review" ></textarea></p></li>     
    </ul>
    <p id="reload-img"><img src="/images/loading.gif"/></p> <p id="button-send-review" iid="'.$id.'" ></p>
    </div>



';

}
	
?>
</div>

<?php
    include("include/block-random.php");	
    include("include/block-footer.php");    
?>
</div>

</body>
<!--consultant-web--><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/chat.css" /><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/settings.css" /><script type="text/javascript">document.write('<scr' + 'ipt type="text/javascript" src="https://spravka.000webhostapp.com/consultant/js/consultant.js.php?ref='+escape(document.referrer)+'&title='+encodeURIComponent(document.getElementsByTagName("title")[0].text)+'"></scr' + 'ipt>');</script><div id="ok_con_web_chat"><div id="ok_button"></div><div id="ok_consultant"></div></div><!--consultant-web-->
</html>