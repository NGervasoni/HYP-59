<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");

$vendor = $_GET['vendor'];
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
   //build query
   $query1 = "SELECT DISTINCT model FROM Telefoni WHERE vendor='$vendor'";
   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   $display_string="";
  
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
      $display_string .= "<option value='$row[model]' onclick='javascript: loadPhone()'>$row[model]</option>";
            
   }

   echo $display_string ;
  
   

?>