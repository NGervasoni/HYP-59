<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
$mysqli->set_charset("utf8mb4");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
  
   
   
   //build query
 

$query = "(SELECT model,vendor,price, promotion FROM Telefoni where promotion is not null) union (SELECT model,vendor,price, promotion FROM Networking where promotion is not null) union (SELECT model,vendor,price, promotion FROM TabletPC where promotion is not null) union (SELECT model,vendor, prezzo, promotion FROM SLdevices where promotion is not null)";

   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   
  while($row = mysql_fetch_array($qry_result)) {
	  $queryImg = "SELECT `path` FROM `Image` WHERE `vendor`= '$row[vendor]' && `model`='$row[model]' ORDER BY `path` ASC LIMIT 1" ;
	  $qryImg_result = mysql_query($queryImg) or die(mysql_error());
	  $pathrow = mysql_fetch_array($qryImg_result);
	 $display_string .= '<div class="col-sm-6">
									<div class="phonebox">
										<center> <img class="img-responsive" src="'.$pathrow[path].'">
											<p id="Model">'.$row[model].'
												<br>'.$row[vendor].'</p>';
											if($row[type]!='smartphone'){
			$display_string .= '<button id="dettagli" type="button" class="btn btn-primary btn-md disabled">Scopri</button>';
		}
		else {$display_string .= '<button id="dettagli" type="button" onclick="loadPhone(\''.$row[model].'\',\''.$row[vendor].'\')" class="btn btn-primary btn-md">Scopri</button>'; }
	$display_string .=
	'</center>
</div></div></div></div>';
   }
  
   echo $display_string;
?>