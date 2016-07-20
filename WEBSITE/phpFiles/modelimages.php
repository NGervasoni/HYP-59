<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}

   // Retrieve data from Query String
   $model = $_GET['model'];
   $vendor = $_GET['vendor'];
   
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);
   
   
  //--------------------------------------FOR TESTING------------------------
   //$vendor='HUAWEI';
   //$model='P9';
  //--------------------------------------FOR TESTING------------------------
   
   
   //build query
$queryImg = "SELECT `path` FROM `Image` WHERE `vendor`= '$vendor' && `model`='$model'
ORDER BY `path`" ;
$qryImg_result = mysql_query($queryImg) or die(mysql_error());
$i=0;
while($pathrow = mysql_fetch_array($qryImg_result)){
		if($i==0){
	$carouselString =	'<ol class="carousel-indicators">	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>';
}
else{
	$carouselString .= '<li data-target="#myCarousel" data-slide-to="'.$i.'"></li>';
}
	  $i++;				
										
									
if($i==1){
	$display_string ='<div class="item active"><img src="'.$pathrow[path].'"></div>';				
}
else{
	$display_string .=  '<div class="item"> <img src="'.$pathrow[path].'"></div>';
}
}
$carouselString .='</ol><div class="carousel-inner" role="listbox" data-wrap="true">'.$display_string.'</div>';
	   
   echo $carouselString;

?>