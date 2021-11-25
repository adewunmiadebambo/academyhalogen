<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');

$product_name = addslashes($_POST['product_name']);
$description = addslashes($_POST['description']);
$quantity = $_POST['quantity'];
$price = $_POST['price'];
$product_type = $_POST['product_type'];
$id = $_POST['product_id'];


if(!$product_name || !$description || !$price)
{
	$error = 'All fields must be entered before submitting';
	include('edit_product.php');
	exit;
}


$query = "update product set product_name = '$product_name', description = '$description', product_type = '$product_type', price = '$price', quantity = '$quantity' where id = '$id'"; 
		

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'OK! Product has been update in database.';		
	include('complete.php');
	exit;
}

?>