<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
   
   //build query
   $query1 = "SELECT DISTINCT Name FROM ClassAssistance";

   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   
  
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
      $display_string = "<div id='cells'>";
            $display_string .= "<h3>$row[Name]</h3><br>";

      //build query
   $query2 = "SELECT Name,Type,color FROM ClassAssistance WHERE Name='$row[Name]' GROUP BY Type";

   //Execute query
   $qry_result2 = mysql_query($query2) or die(mysql_error());
      
      while($row2 = mysql_fetch_array($qry_result2)) {
      $var="'$row2[Type]'";
      $display_string .= "<div role='button' tabindex='0' id='$row2[Name]' style='color:$row2[color];cursor:pointer;'>$row2[Type]</div>";
      $display_string .= "<hr><br>";
   }
            $display_string .= "</select></div>";

   echo $display_string ;
  }
   

?>