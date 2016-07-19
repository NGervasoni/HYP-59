<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
   
   //build query
   $query1 = "SELECT * FROM Telefoni";
   $query2 = "SELECT * FROM TabletPC";

   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   $qry_result2 = mysql_query($query2) or die(mysql_error());
   
   $display_string = "<br>";
   $display_string .= "<h4><b>Smartphone:</b></h4>";
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
      $display_string .= "<b><div id='cells' style='color:blue; cursor:pointer' onclick=loadPhone('$row[model]','$row[vendor]')";
            $display_string .= "<p>$row[vendor]";
            $display_string .= " $row[model]</p>";
          $display_string .=  "</div></b>";}
            
            $display_string .= "<br><h4><b>Tablet:</b></h4>";
            
  while($row = mysql_fetch_array($qry_result2)) {
      $display_string .= "<b><div id='cells' style='color:blue; cursor:pointer' onclick=loadPhone('$row[model]','$row[vendor]')";
            $display_string .= "<p>$row[vendor]";
            $display_string .= " $row[model]</p>";
           $display_string .=  "</div></b>" ;}


   echo $display_string ;
 
   

?>