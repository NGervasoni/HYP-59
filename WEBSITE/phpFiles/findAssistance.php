<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");

$vendor = $_GET['vendor'];
$model=$_GET['model'];
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
$query = "SELECT * FROM Image WHERE vendor='$vendor' AND model='$model' GROUP BY vendor AND model";
   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   //build query
   while($im = mysql_fetch_array($qry_result)){
   $display_string="<div widht='30%'><img src='$im[path]' width=30% onclick=loadPhone('$model','$vendor')>$im[vendor] $im[model]</div>";
   }
   echo $display_string;
   $query1 = "SELECT title FROM Configurazione WHERE vendor='$vendor' AND model='$model'";
   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   $display_string="";
  
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
      $display_string .= "<div id='cells'><img src='../images/settingSheet.png'><p>$row[title]</p></div>";
            
   }

   echo $display_string ;
  
   

?>