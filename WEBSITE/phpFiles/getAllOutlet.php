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
	 	 $display_string .=  '<div class="col-sm-3">
							<div class="panel panel-default">
								<div class="panel-body"><center>
<div class="phonebox"> <img class="img-responsive" src="'.$pathrow[path].'">
		<p id="model">'.$row[model].'</p>
		<p id="vendor">'.$row[vendor].'</p>';
	  
	  if($row[promotion]!=null){
		  $display_string .= '<div><p id="price"><del>'.$row[price].' &#8364</del></p><p id="promotion">&nbsp'.$row[promotion].' &#8364</p></div>';
	  }
	  
	  if($row[type]=="smartphone" || $row[type]=="iphone"){
		   $display_string .= '	<button id="dettagli" type="button" onclick="loadPhone(\''.$row[model].'\',\''.$row[vendor].'\')" class="btn btn-primary btn-md">DETTAGLI</button>';
	  }
	 else{
		 $display_string .= '	<button id="dettagli" type="button" class="btn btn-primary btn-md disabled">DETTAGLI</button>';
	 }
	   $display_string .='</center>
</div></div></div></div>' ;
	
	
   }
  
   echo $display_string;
?>