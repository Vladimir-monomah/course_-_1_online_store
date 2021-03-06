<?php
define('it', true);		
   include("include/db_connect.php"); 
   include("function/function.php");
   session_start();
   include("include/auth_cookie.php");
   include("function/localization.php");
   $cat = clear_string($_GET["cat"]);
   $type = clear_string($_GET["type"]);
      
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="trackbar/trackbar.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    
    <script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script> 
    <script type="text/javascript" src="/js/jcarousellite_1.0.1.js"></script> 
    <script type="text/javascript" src="/js/shop-script.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="/trackbar/jquery.trackbar.js"></script>
    <script type="text/javascript" src="/js/TextChange.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/fancybox/jquery.fancybox.css" />
    <script type="text/javascript" src="/fancybox/jquery.fancybox.js"></script>
    
    <script src="code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="https://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
<script src="https://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
<script type="text/javascript">
        $(document).ready(function(){
            $("a.product-image").fancybox();
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
    
	<title><?php echo localize_text('Поиск по параметрам', $_SESSION["lang"], $link); ?></title>
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
	
 
  if ($_GET["brand"])
  {
      $check_brand = implode(',',$_GET["brand"]);
  } 
  
  $start_price = (int)$_GET["start_price"];
  $end_price = (int)$_GET["end_price"];


  if (!empty($check_brand) OR !empty($end_price))
  {
    
    if (!empty($check_brand)) $query_brand = " AND brand_id IN($check_brand)";
    if (!empty($end_price)) $query_price = " AND price BETWEEN $start_price AND $end_price";
    
    
  }

    
    
  $result = mysql_query("SELECT * FROM table_products WHERE visible='1' $query_brand $query_price ORDER BY products_id DESC",$link);  

if (mysql_num_rows($result) > 0)
{
 $row = mysql_fetch_array($result); 
 
 echo '
 <div id="block-sorting">
<p id="nav-breadcrumbs"><a href="index.php" >'.localize_text('Главная страница', $_SESSION["lang"], $link).'</a> \ <span>'.localize_text('Все товары', $_SESSION["lang"], $link).'</span></p>
<ul id="options-list" type="none">
<li>'.localize_text('Вид:', $_SESSION["lang"], $link).' </li>
<li><img id="style-grid" src="/images/icon-grid.png" /></li>
<li><img id="style-list" src="/images/icon-list.png" /></li>
<li><a id="select-sort">'.$sort_name.'</a>
<ul id="sorting-list">
<li><a href="view_cat.php?'.$catlink.'type='.$type.'&sort=price-asc" >'.localize_text('От дешёвых к дорогим', $_SESSION["lang"], $link).'</a></li>
<li><a href="view_cat.php?'.$catlink.'type='.$type.'&sort=price-desc" >'.localize_text('От дорогих к дешёвым', $_SESSION["lang"], $link).'</a></li>
<li><a href="view_cat.php?'.$catlink.'type='.$type.'&sort=popular" >'.localize_text('Популярное', $_SESSION["lang"], $link).'</a></li>
<li><a href="view_cat.php?'.$catlink.'type='.$type.'&sort=news" >'.localize_text('Новинки', $_SESSION["lang"], $link).'</a></li>
<li><a href="view_cat.php?'.$catlink.'type='.$type.'&sort=brand" >'.localize_text('От А до Я', $_SESSION["lang"], $link).'</a></li>
</ul>
</li>
</ul>
</div>

 <ul id="block-tovar-grid" type="none" >
 
 ';
 
 
 do
 {

if  ($row["image"] != "" && file_exists("./uploads_images/".$row["image"]))
{
$img_path = './uploads_images/'.$row["image"];
$max_width = 200; 
$max_height = 200; 
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
$query_reviews = mysql_query("SELECT * FROM table_reviews WHERE products_id = '{$row["products_id"]}' AND moderat='1'",$link);  
$count_reviews = mysql_num_rows($query_reviews);

  echo '
  
  <li>
  <div class="block-images-grid">
  <a class="product-image" href="'.$img_path.'"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'"/></a>
  </div>
  <p class="style-title-grid" ><a href="view_content.php?id='.$row["products_id"].'" >'.localize_text($row["title"], $_SESSION["lang"], $link).'</a></p>
  <ul class="reviews-and-counts-grid" type="none">
  <li><img src="/images/eye-icon.png" /><p>'.$row["count"].'</p></li>
  <li><img src="/images/comment-icon.png" /><p>'.$count_reviews.'</p></li>
  </ul>
  <a class="add-cart-style-grid" tid="'.$row["products_id"].'"></a>
  <p class="style-price-grid" ><strong>'.group_numerals( $row[price]).'</strong> '.localize_text('руб.', $_SESSION["lang"], $link).'</p>
  <div class="mini-features" >
  '.localize_text($row["mini_features"], $_SESSION["lang"], $link).'
  </div>
  </li>
  
  ';
  
    
 }
    while ($row = mysql_fetch_array($result));
    


?>
</ul>


<ul id="block-tovar-list" type="none">

<?php
	
  $result = mysql_query("SELECT * FROM table_products WHERE visible='1' $query_brand $query_price ORDER BY products_id DESC",$link);  

if (mysql_num_rows($result) > 0)
{
 $row = mysql_fetch_array($result); 
 
 do
 {

if  ($row["image"] != "" && file_exists("./uploads_images/".$row["image"]))
{
$img_path = './uploads_images/'.$row["image"];
$max_width = 150; 
$max_height = 150; 
 list($width, $height) = getimagesize($img_path); 
$ratioh = $max_height/$height; 
$ratiow = $max_width/$width; 
$ratio = min($ratioh, $ratiow); 
$width = intval($ratio*$width); 
$height = intval($ratio*$height);    
}else
{
$img_path = "/images/noimages80x70.png";
$width = 80;
$height = 70;
} 

     // Количество отзывов 
$query_reviews = mysql_query("SELECT * FROM table_reviews WHERE products_id = '{$row["products_id"]}' AND moderat='1'",$link);  
$count_reviews = mysql_num_rows($query_reviews);
  
  echo '
  
  <li>
  <div class="block-images-list" >
  <a class="product-image" href="'.$img_path.'"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'"/></a>
  </div>


  <ul class="reviews-and-counts-list" type=none>
  <li><img src="/images/eye-icon.png" /><p>'.$row["count"].'</p></li>
  <li><img src="/images/comment-icon.png" /><p>'.$count_reviews.'</p></li>
  </ul>
  
  <p class="style-title-list" ><a href="view_content.php?id='.$row["products_id"].'" >'.$row["title"].'</a></p>
  
  <a class="add-cart-style-list" tid="'.$row["products_id"].'"></a>
  <p class="style-price-list" ><strong>'.group_numerals( $row[price]).'</strong> руб.</p>
  <div class="style-text-list" >
  '.localize_text($row["mini_description"], $_SESSION["lang"], $link).'
  </div>
  </li>
  
  ';
  
    
 }
    while ($row = mysql_fetch_array($result));
}
}else
{
    echo '<h3>'.localize_text('Категория не доступна или не создана!', $_SESSION["lang"], $link).'</3>';
}    


?>
</ul>


</div>

<?php	
    include("include/block-random.php");
    include("include/block-footer.php");    
?>
</div>

</body>
<!--consultant-web--><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/chat.css" /><link type="text/css" rel="stylesheet" href="https://spravka.000webhostapp.com/consultant/css/settings.css" /><script type="text/javascript">document.write('<scr' + 'ipt type="text/javascript" src="https://spravka.000webhostapp.com/consultant/js/consultant.js.php?ref='+escape(document.referrer)+'&title='+encodeURIComponent(document.getElementsByTagName("title")[0].text)+'"></scr' + 'ipt>');</script><div id="ok_con_web_chat"><div id="ok_button"></div><div id="ok_consultant"></div></div><!--consultant-web-->
</html>