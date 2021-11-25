<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$task = addslashes($_POST['task']);
$responsibility = $_POST['responsibility'];
$unit = $_POST['unit'];
$deadline = mydate($_POST['deadline']);

$id = $_POST['id'];

if(!$task || !$responsibility || !$unit || !$deadline)
{
	$error = 'All fields must be entered before submitting';
	include('edit.php');
	exit;
}

echo $query = "update activities set
			task = '$task',
			responsibility = '$responsibility',
			unit = '$unit',
			deadline = '$deadline' where id = '$id'";
		
$result = mysqli_query($connect, $query);
if($result)
{
	 

	$correct = 'OK! Task has been updated.';		
	include('edit.php');
	exit;
}
else
{
	$error = 'Error: Somthing went wrong.';
	include('edit.php');	
	exit;
}