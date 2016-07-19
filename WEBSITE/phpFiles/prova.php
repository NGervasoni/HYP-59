<?php
echo "My first PHP script!";
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
else{
	echo "Success!";
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
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);
   $available = mysql_real_escape_string($available);
   $promotion = mysql_real_escape_string($promotion);
   $type = mysql_real_escape_string($type);;
   $new = mysql_real_escape_string($new);
   $presentation = mysql_real_escape_string($presentation);
   $specs = mysql_real_escape_string($specs);
   
   
   
   
   //build query
   $query = "SELECT * FROM Phone WHERE vendor = '$vendor'";
   
  // $query .= " AND age <= $age";
   
   //if(is_numeric($wpm))
   //$query .= " AND wpm <= $wpm";
   
   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   
   //Build Result String
   $display_string = "<table>";
   $display_string .= "<tr>";
   $display_string .= "<th>Vendor</th>";
   $display_string .= "<th>Model</th>";
   $display_string .= "<th>Price</th>";
   $display_string .= "<th>Available</th>";
   $display_string .= "</tr>";
   
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result)) {
      $display_string .= "<tr>";
      $display_string .= "<td>$row[vendor]</td>";
      $display_string .= "<td>$row[model]</td>";
      $display_string .= "<td>$row[price]</td>";
      $display_string .= "<td>$row[available]</td>";
      $display_string .= "</tr>";
   }
   echo "Query: " . $query . "<br />";
   
   $display_string .= "</table>";
   echo $display_string;

?>