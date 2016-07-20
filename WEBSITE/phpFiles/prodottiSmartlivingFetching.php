<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
$mysqli->set_charset("utf8mb4");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
  
   
   
   //build query
   $query = "SELECT * FROM SLdevices LIMIT 3";

   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   
  while($row = mysql_fetch_array($qry_result)) {
	  $queryImg = "SELECT `path` FROM `Image` WHERE `vendor`= '$row[vendor]' && `model`='$row[model]' ORDER BY `path` ASC LIMIT 1" ;
	  $qryImg_result = mysql_query($queryImg) or die(mysql_error());
	  $pathrow = mysql_fetch_array($qryImg_result);
	 $display_string .= '<div class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body"><center>
<div class="phonebox"> <img class="img-responsive" src="'.$pathrow[path].'">
		<p id="model">'.$row[model].'</p>
		<p id="vendor">'.$row[vendor].'</p>
        
		<button id="dettagli" type="button" class="btn btn-primary btn-md disabled">Scopri</button>
	
	</center>
</div></div></div></div>' ;
   }
  
   echo $display_string;
?>