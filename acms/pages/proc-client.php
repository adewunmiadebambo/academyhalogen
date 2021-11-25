<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$img_url = addslashes($_POST['img_url']);
$link = addslashes($_POST['link']);
$type = addslashes($_POST['type']);
$ext_link = addslashes($_POST['ext_link']);


$userfile = $_FILES['userfile']['tmp_name'];
$userfile_name = $_FILES['userfile']['name'];

$size = round(filesize($userfile) / 1024, 0).' KB'; // kilobytes with two digits 



if(!$title || !$userfile)
{
	$error = 'All information required';
	include ('add_client.php');
	exit;
}


if(checkfile($userfile_name, 'pics') == 'error')
{
	$error = "The image you are uploading must be an image";
	include('add_client.php');
	exit;	
}


$query = "insert into client set
			title = '$title',
			content = '$content',
			link = '$link',
			status = '$type',
			ext_link = '$ext_link'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$query2 = "select * from client order by id desc";
	$result2 = mysqli_query($connect, $query2);
	$row2 = mysqli_fetch_array($result2);
	$id = $row2['id'];
	$title2 = $row2['title'];
	
	$ext = get_extension($userfile_name);
	$dbImage = 'Clients_'.$title2.'.'.$ext;
	$upfile = 'uploads/'.$dbImage;

if(move_uploaded_file($userfile, $upfile))
{
	$query = "insert into image_manager set title = '$title', filename = '$dbImage', file_size = '$size'"; 
	$result = mysqli_query($connect, $query);
	
	$query = "update client set image_url = '$dbImage' where id = '$id'";
	$result = mysqli_query($connect, $query);
	
	$correct = 'Client Added Successfully';
	include ('add_client.php');
}
else
{
	$error = 'Cannot add Client now, please try again';
	include('add_client.php');
	exit;
}
}
?>
