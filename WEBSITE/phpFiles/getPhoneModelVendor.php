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
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);

  //--------------------------------------FOR TESTING------------------------
   $vendor='HUAWEI';
   $model='P9';
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
									<p id="prezzo">'.$row[price].' &#8364</p>';
                                    //&#8364 euro symbol
   }
  
   echo $display_string;

?>