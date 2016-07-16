<?php
$mysqli = mysqli_connect("localhost", "root", "","my_hyp59");
mysql_select_db("my_hyp59");

if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
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
$path =$_GET['path'];
   
   // Escape User Input to help prevent SQL Injection
   $model = mysql_real_escape_string($model);
   $vendor = mysql_real_escape_string($vendor);
   $available = mysql_real_escape_string($available);
   $promotion = mysql_real_escape_string($promotion);
   $type = mysql_real_escape_string($type);;
   $new = mysql_real_escape_string($new);
   $presentation = mysql_real_escape_string($presentation);
   $specs = mysql_real_escape_string($specs);
 $path = mysql_real_escape_string($path);
   
   
   
   
   //build query
   $query = "SELECT * FROM Telefoni";
 

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
	
		<p id="Model">'.$row[model].'
			<br>'.$row[vendor].'</p>
		<p id="Price">'.$row[price].'</p>
		<a href="prodottoLAYOUT.html">
		<button type="button" class="btn btn-primary btn-md ">Scopri</button>
	</a>
	</center>
</div></div></div></div>';
   }
  
   echo $display_string;

?>