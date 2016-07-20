<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");
$mysqli->set_charset("utf8mb4");
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}  
   
   //build query
   $query = "SELECT * FROM Networking";
 
   //Execute query
   $qry_result = mysql_query($query) or die(mysql_error());
   
  while($row = mysql_fetch_array($qry_result)) {
	  $queryImg = "SELECT `path` FROM `Image` WHERE `vendor`= '$row[vendor]' && `model`='$row[model]'
ORDER BY `path` ASC LIMIT 1" ;
	  $qryImg_result = mysql_query($queryImg) or die(mysql_error());
	  $pathrow = mysql_fetch_array($qryImg_result);
	 $display_string .=  '<div class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body"><center>
<div class="phonebox"> <img class="img-responsive" src="'.$pathrow[path].'">
		<p id="model">'.$row[model].'</p>
		<p id="vendor">'.$row[vendor].'</p>';
		 
		 if(isset($row[promotion]) ){
			 $display_string .= '<p id="price"><del>'.$row[price].' &#8364</del>   '.$row[promotion].' &#8364</p>';
		 }
	  	else {
			$display_string .= '<p id="price">'.$row[price].' &#8364</p>';
		}
        
		$display_string .'=<button id="dettagli" type="button" onclick="loadPhone(\''.$row[model].'\',\''.$row[vendor].'\')" class="btn btn-primary btn-md">DETTAGLI</button>
	
	</center>
</div></div></div></div>';
   }
  
   echo $display_string;

?>