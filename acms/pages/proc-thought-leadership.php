<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$date_mm = addslashes($_POST['date_mm']);
$date_yy = addslashes($_POST['date_yy']);

$date = date('Y-m-d', strtotime($date_yy.'-'.$date_mm.'-01'));



$userfile = $_FILES['doc_file']['tmp_name'];
$userfile_name = $_FILES['doc_file']['name'];

$extension = explode('.', $userfile_name);
$file_ext = array_reverse($extension);
$ext = strtolower($file_ext[0]);

$userfile2 = $_FILES['image_file']['tmp_name'];
$userfile_name2 = $_FILES['image_file']['name'];


$extension2 = explode('.', $userfile_name2);
$file_ext2 = array_reverse($extension2);
$ext2 = strtolower($file_ext2[0]);

if(!$title || !$date_mm || !$date_yy || !$userfile_name || !$userfile_name2)
{
	$error = 'All information required';
	include ('add_thought_leadership.php');
	exit;
}


if($ext != 'pdf')
{
    $error = 'You have uploaded a wrong file type. Only PDF are allowed';
	include ('add_thought_leadership.php');
	exit;
}


if($ext2 != 'jpg')
{
    $error = 'You have uploaded a wrong file type. Only JPG are allowed';
	include ('add_thought_leadership.php');
	exit;
}

$upload = str_replace(',','','uploads/pdf/'.$title.'_'.$date.'.'.$ext);
$upload2 = str_replace(',','','uploads/'.$title.'_'.$date.'.'.$ext2);

move_uploaded_file($userfile,$upload);

move_uploaded_file($userfile2,$upload2);

$query = "insert into thought_leadership set
			title = '$title',
			date = '$date',
			filepath = '$upload',
			imagepath = '$upload2'";

			

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "$title Added Successfully";
	include ('add_thought_leadership.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('add_thought_leadership.php');
	exit;
}
?>
