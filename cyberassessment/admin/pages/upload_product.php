<?php
session_start();
include("connect.php");
require_once('fns.php');

	
// set timezone




$filename = $_FILES["userfile"]["tmp_name"];
if($_FILES["userfile"]["size"] > 0)	{
	$file = fopen($filename, "r");
	while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)	{
	//print_r($emapData);

	$sql = "INSERT INTO product (date,item_reference,product_name,description,size,price,category,product_type,quantity) VALUES ('".$emapData[0]."', '".$emapData[1]."', '".$emapData[2]."', '".$emapData[3]."', '', '".$emapData[5]."', '".$emapData[6]."', '".$emapData[7]."', '".$emapData[8]."')";

	$result = mysqli_query($connect, $sql); 
		if(!isset($result))
		{			
			$error = "Error Occured: CSV file has not been successfully imported";
			include('add_product.php');	
			exit;
		}
		else {			  
			//remove column header
			mysqli_query($connect,"delete from product where item_reference='item_reference' or id='id' or description='description'");
		}

	}
	fclose($file);
	$correct = "CSV file has been successfully imported";
	include('add_product.php');	


}
else	{
	$error = 'Invalid file! Please upload CSV File / <a href="template.csv">click here</a> for template';
	include('add_product.php');
	exit;
}


?>