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
   $available = $_GET['available'];
   $promotion = $_GET['promotion'];
   $type = $_GET['type'];
   $new = $_GET['new'];
   $presentation = $_GET['presentation'];
   $specs = $_GET['specs'];
$path =$_GET['path'];
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);
   $available = mysql_real_escape_string($available);
   $promotion = mysql_real_escape_string($promotion);
   $type = mysql_real_escape_string($type);;
   $new = mysql_real_escape_string($new);
   $presentation = mysql_real_escape_string($presentation);
   $specs = mysql_real_escape_string($specs);
 $path = mysql_real_escape_string($path);
   
   $model = "P9";
   $vendor = "HUAWEI";
   
   
   //build query
//   $query = "SELECT * FROM Telefoni WHERE vendor = '$vendor' && model= '$model'"; // // //Execute query // $qry_result = mysql_query($query) or die(mysql_error()); // // // $row = mysql_fetch_array($qry_result);

//
$queryImg = "SELECT * from Image" ;
$qryImg_result = mysql_query($queryImg) or die(mysql_error());
$i=0;
while($pathrow = mysql_fetch_array($qryImg_result))
  $i=i+1;
  echo $qryImg_result[model];
if($i===1){
	echo 1;
	echo '<img src="'.$pathrow[path].'"> ';				
}
else{
	$display_string .=  '<div class="item"> <img src="'.$pathrow[path].'"> </div>';
	echo 2;
}
	   
   echo $display_string;

?>