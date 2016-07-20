<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}

   // Retrieve data from Query String
 $vendor = $_GET['vendor'];
   $model = $_GET['model'];
  
//$vendor='HUAWEI';
//   
//   $model='P9';
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);   

     $query = "SELECT * FROM SpecsTelefono WHERE Tecnologia LIKE '%4G%' and vendor='$vendor' and model='$model'" ;

   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());

  while($row = mysql_fetch_array($qry_result)) {
	  echo 'asdf';
	 $display_string .= '<li class="list-group-item">Copertura 4G</li>';
	  echo 'asdf';
   }
   echo $display_string;
echo 'asdf';

?>