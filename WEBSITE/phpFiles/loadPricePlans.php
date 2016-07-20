<?php
$mysqli = mysqli_connect("localhost", "hyp59", "","my_hyp59");
mysql_select_db("my_hyp59");
if(mysqli_connect_errno()){
	echo "Error: ".mysqli_connect_error();
	exit();
}
   
   //build query
   $query1 = "SELECT * FROM PricePlans WHERE sort='MOBILE'";
   $query2 = "SELECT * FROM PricePlans WHERE sort='FISSO'";
   $query3 = "SELECT * FROM PricePlans WHERE sort='BOTH'";

   //Execute query
   $qry_result1 = mysql_query($query1) or die(mysql_error());
   $qry_result2 = mysql_query($query2) or die(mysql_error());
   $qry_result3 = mysql_query($query3) or die(mysql_error());

   
   $display_string = "<br>";
   $display_string .= "<h2><b>Scegli l'offerta più adatta a te:<br><br></b></h2><h3>Mobile:<br><br></h3>";
   // Insert a new row in the table for each person returned
  while($row = mysql_fetch_array($qry_result1)) {
  
    
  	$display_string .="<div class='Column'><img src='$row[imgpath]' align=center><br><br>
    	<h3 align=center>$row[name]</h3>
                <h4 style='color:black'>
                    $row[comment]
                </h4>
                <h3 align=center>$row[price]&#8364/mese</h3>
                <br>
                <br>
                <div>";
    if($row[link]!=NULL){
                $display_string .="<p class='cmon'>
                <a class='button' href='$row[link]' role='button' width=35%>SCOPRI </a>   
                </p>";}
    else{$display_string .=" <p class='cmon'>
                <a[disabled] class='button' id='dis' role='button' width=35%>SCOPRI </a>      
                </p>";}
                $display_string .="</div></div>
                ";}
                
                $display_string .="<h3><br><br>Fisso:<br><br></h3>";
                
                while($row = mysql_fetch_array($qry_result2)) {
  
    
  	$display_string .="<div class='Column'><img src='$row[imgpath]' align=center><br><br>
    	<h3 align=center>$row[name]</h3>
                <h4 style='color:black'>
                    $row[comment]
                </h4>
                <h3 align=center>$row[price]&#8364/mese</h3>
                <br>
                <br>
                <div>";
    if($row[link]!=NULL){
                $display_string .="<p class='cmon'>
                <a class='button' href='$row[link]' role='button' width=35%>SCOPRI </a>   
                </p>";}
    else{$display_string .=" <p class='cmon'>
                <a[disabled] class='button' id='dis' role='button' width=35%>SCOPRI </a>      
                </p>";}
                $display_string .="</div></div>
                ";}
                
                
                $display_string .="<h3><br><br>Fisso+Mobile:<br><br></h3>";

                
                while($row = mysql_fetch_array($qry_result3)) {
  
    
  	$display_string .="<div class='Column'><img src='$row[imgpath]' align=center><br><br>
    	<h3 align=center>$row[name]</h3>
                <h4 style='color:black'>
                    $row[comment]
                </h4>
                <h3 align=center>$row[price]&#8364/mese</h3>
                <br>
                <br>
                <div>";
    if($row[link]!=NULL){
                $display_string .="<p class='cmon'>
                <a class='button' href='$row[link]' role='button' width=35%>SCOPRI </a>   
                </p>";}
    else{$display_string .=" <p class='cmon'>
                <a[disabled] class='button' id='dis' role='button' width=35%>SCOPRI </a>      
                </p>";}
                $display_string .="</div></div>
                ";}
                
  
   echo $display_string;
?>