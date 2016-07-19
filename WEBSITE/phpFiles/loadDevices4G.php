<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
   //build query
   $query1 = "SELECT vendor,model FROM SpecsTelefono WHERE Tecnologia LIKE '%4G%'";
   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   $display_string="";
  
  
  while($row = mysql_fetch_array($qry_result1)) {
  
  $query2 = "SELECT * FROM Image WHERE vendor='$row[vendor]' AND model='$row[model]' GROUP BY vendor AND model ";
   //Execute query
   $qry_result2 = mysql_query($query2) or die(mysql_error());
   while($im = mysql_fetch_array($qry_result2)){
   $display_string.="<div id='cells'><div align='center'><img src='$im[path]' width=80% onclick=loadPhone('$row[model]','$row[vendor]')></div>";
   }
   
      $display_string .= "<div align='center'>$row[vendor] $row[model]</div></div>";
   }
   echo $display_string;
 
?>