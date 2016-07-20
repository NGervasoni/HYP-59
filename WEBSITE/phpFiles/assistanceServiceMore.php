<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
    $type = $_GET['Type'];
    $name = $_GET['Name'];
    $type = mysql_real_escape_string($type);
    $name = mysql_real_escape_string($name);
   //build query
   $query1 = "SELECT DISTINCT Cat3 FROM ClassAssistance WHERE Type='$type' AND Cat3 IS NOT NULL AND Name LIKE '%$name%'";

   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   
  
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
      $display_string = "<div id='cells'>";
            $display_string .= "<h3>$row[Cat3]</h3><br>";

      //build query
   $query2 = "SELECT Name,link,color FROM AssistanceService WHERE Cat3='$row[Cat3]'";

   //Execute query
   $qry_result2 = mysql_query($query2) or die(mysql_error());
      
      while($row2 = mysql_fetch_array($qry_result2)) {
      
      $display_string .= "<a href=$row2[link] style='color:$row2[color]'>$row2[Name]</a>";
      $display_string .= "<hr><br>";
   }
            $display_string .= "</div>";

   echo $display_string ;
  }
   

?>