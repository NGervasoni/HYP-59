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
   
   $vendor='HUAWEI';
   
   $model='P9';
   //build query
   $query = "SELECT * FROM Telefoni WHERE vendor = '$vendor' && model= '$model'"; 
 

   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   

  while($row = mysql_fetch_array($qry_result)) {
	  
	 $display_string .=  $row[specs];
   }
  
   echo $display_string;

?>