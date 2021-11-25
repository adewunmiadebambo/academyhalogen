<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');

$category = addslashes($_POST['category']);

if(!$category)
{
	$error = 'Enter a category before you continue';
	include('add_category.php');
	exit;
}


$query = "insert into category set
			category = '$category'";
		
$result = mysql_query($query);
if($result)
{
	
	$correct = 'OK! Category has been added to database.';		
	include('add_category.php');
	exit;
}
else
{
	$error = 'Sorry! Category name already exist .';
	include('add_category.php');	
	exit;
}