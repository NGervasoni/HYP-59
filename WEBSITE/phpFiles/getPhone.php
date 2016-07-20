<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
$mysqli -> set_charset("utf8mb4");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}

   // Retrieve data from Query String
 $vendor = $_GET['vendor'];
   $model = $_GET['model'];
  
   // Escape User Input to help prevent SQL Injection
 $vendor = mysql_real_escape_string($vendor);
   $model = mysql_real_escape_string($model);
  

  //--------------------------------------FOR TESTING------------------------
   //$vendor='HUAWEI';
   //$model='P9';
  //--------------------------------------FOR TESTING------------------------

   //build query
   $query = "SELECT * FROM Telefoni WHERE vendor = '$vendor' && model= '$model'"; 
 

   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   

  while($row = mysql_fetch_array($qry_result)) {
	  
	 $display_string =  '<h2 id="nome">'.$row[vendor].' '.$row[model].'</h2>
									<div id="description">
										'.$row[presentation].'
									</div>
									<center><p id="price">'.$row[price].' &#8364</p></center>';
                                    //&#8364 euro symbol
   }
  
   echo $display_string;

?>