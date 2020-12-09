<?php
	defined('it') or die('Доступ запрещён!');
  include_once(__DIR__ ."/../function/localization.php");
?>
<!--Список категорий товаров. -->
<div id="block-category">
<p class="header-title" ><?php echo localize_text('Категории товаров', $_SESSION["lang"], $link); ?></p>
<!--Мобильные телефоны. -->
<ul class="category-outer" type="none">
<li><a id="index1" ><img src="/images/mobile-icon.png" id="mobile-images" /><?php echo localize_text('Мобильные телефоны', $_SESSION["lang"], $link); ?></a>
<ul class="category-section" type="none">
<li><a href="view_cat.php?type=mobile"><strong><?php echo localize_text('Все модели', $_SESSION["lang"], $link); ?></strong> </a></li>

<?php

  $result = mysql_query("SELECT * FROM category WHERE type='mobile'",$link);
  
 If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);
do
{
	echo '
    
  <li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'">'.$row["brand"].'</a></li>
    
    ';
}
 while ($row = mysql_fetch_array($result));
} 
	
?>

</ul>
</li>
<!--Ноутбуки. -->
<li><a id="index2" ><img src="/images/book-icon.png" id="book-images" /><?php echo localize_text('Ноутбуки', $_SESSION["lang"], $link); ?></a>
<ul class="category-section" type="none">
<li><a href="view_cat.php?type=notebook"><strong><?php echo localize_text('Все модели', $_SESSION["lang"], $link); ?></strong> </a></li>

<?php

  $result = mysql_query("SELECT * FROM category WHERE type='notebook'",$link);
  
 If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);
do
{
	echo '
    
  <li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'">'.$row["brand"].'</a></li>
    
    ';
}
 while ($row = mysql_fetch_array($result));
} 
	
?>

</ul>
</li>
<!--Планшеты. -->
<li><a id="index3" ><img src="/images/table-icon.png" id="table-images" /><?php echo localize_text('Планшеты', $_SESSION["lang"], $link); ?></a>
<ul class="category-section" type="none">
<li><a href="view_cat.php?type=notepad"><strong><?php echo localize_text('Все модели', $_SESSION["lang"], $link); ?></strong> </a></li>
<?php

  $result = mysql_query("SELECT * FROM category WHERE type='notepad'",$link);
  
 If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);
do
{
	echo '
    
  <li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'">'.$row["brand"].'</a></li>
    
    ';
}
 while ($row = mysql_fetch_array($result));
} 	
?>
</ul>
</li>

<!--Компьютеры. -->
<li><a id="index4" ><img src="/images/pc-icon.png" id="mobile-images" /><?php echo localize_text('Компьютеры', $_SESSION["lang"], $link); ?></a>
<ul class="category-section" type="none">
<li><a href="view_cat.php?type=mobile"><strong><?php echo localize_text('Все модели', $_SESSION["lang"], $link); ?></strong> </a></li>

<?php

  $result = mysql_query("SELECT * FROM category WHERE type='pc'",$link);
  
 If (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);
do
{
	echo '
    
  <li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'">'.$row["brand"].'</a></li>
    
    ';
}
 while ($row = mysql_fetch_array($result));
} 	
?>
</ul>
</li>


</ul>

</div>