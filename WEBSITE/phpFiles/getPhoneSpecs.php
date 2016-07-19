<?php

header('Content-type: text/html; charset=utf-8');

$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}

   // Retrieve data from Query String
   $model = $_GET['model'];
   $vendor = $_GET['vendor'];
   $display_string.=var_dump($model).var_dump($model);
   // Escape User Input to help prevent SQL Injection
    $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);

  //--------------------------------------FOR TESTING------------------------
//$vendor='HUAWEI';
 //  $model='P9';
  //--------------------------------------FOR TESTING------------------------

   //build query
  $query = "SELECT * FROM SpecsTelefono WHERE vendor = '$vendor' AND model= '$model'"; 
$qry_result = mysql_query($query) or die(mysql_error());
$row = mysql_fetch_array($qry_result);
	
 $sql = "DESC SpecsTelefono";
	
$fields = array();
$res=mysql_query($sql) or die(mysql_error()); 
while ($x = mysql_fetch_assoc($res)){
  $fields[] = $x['Field'];
}
foreach ($fields as $f) { 
	 $display_string .= "<tr>
		<td>".$f."</td>
		<td>".$row[$f]."</td>
	</tr>";
						}
   echo $display_string;
?>