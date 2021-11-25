<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');

$task = addslashes($_POST['task']);
$responsibility = $_POST['responsibility'];
$unit = $_POST['unit'];
$deadline = mydate($_POST['deadline']);

if(!$task || !$responsibility || !$unit || !$deadline)
{
	$error = 'All fields must be entered before submitting';
	include('add_task.php');
	exit;
}

$query = "insert into activities set
			date = '".today()."',
			task = '$task',
			responsibility = '$responsibility',
			unit = '$unit',
			deadline = '$deadline',
			status = 'undone'";
		
$result = mysqli_query($connect, $query);
if($result)
{
	 

	$correct = 'OK! Task has been added to database.';		
	include('add_task.php');
	exit;
}
else
{
	$error = 'Error: Somthing went wrong.';
	include('add_task.php');	
	exit;
}