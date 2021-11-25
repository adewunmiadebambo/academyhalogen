<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');
require_once('SimpleImage.php');


$title = addslashes($_POST['title']);
$album_id = addslashes($_POST['album_id']);
$content = addslashes($_POST['content']);
$ext_link = addslashes($_POST['ext_link']);

$userfile = $_FILES['userfile']['tmp_name'];
$userfile_name = $_FILES['userfile']['name'];

$size = round(filesize($userfile) / 1024, 0).' KB'; // kilobytes with two digits 


if(checkfile($userfile_name, 'pics') == 'error')
{
	$error = "The image you are uploading must be an image";
	include('add_gallery.php');
	exit;	
}


if(!$title || !$album_id || !$userfile)
{
	$error = 'All fields must be entered before submitting';
	include('add_gallery.php');
	exit;
}

$query = "insert into photo_gallery set
			title = '$title',
			image_url = '$image_url',
			album_id = '$album_id',
			content = '$content',
			ext_link = '$ext_link'";

		
$result = mysqli_query($connect, $query);
if($result)
{
	$query2 = "select * from photo_gallery order by id desc";
	$result2 = mysqli_query($connect, $query2);
	$row2 = mysqli_fetch_array($result2);
	$id = $row2['id'];
	$title2 = $row2['title'];
	
	$ext = get_extension($userfile_name);
	$dbImage = $title2.'.'.$ext;
	$upfile = 'uploads/'.$dbImage;

if(move_uploaded_file($userfile, $upfile))
{
	$image = new SimpleImage();
$image->load($upfile);
$image->resizeToWidth(600);
$image->resizeToHeight(600);
$image->save($upfile);
	
	$query = "insert into image_manager set title = '$title', filename = '$dbImage', file_size = '$size'"; 
	$result = mysqli_query($connect, $query);
	
	$query = "update photo_gallery set image_url = '$dbImage' where id = '$id'";
	$result = mysqli_query($connect, $query);
	
	$correct = 'Photo Gallery has been added successfully';		
	include('add_gallery.php');
	exit;
}else
{
	$error = 'Cannot process Photo Gallery, please try again';
	include('add_gallery.php');	
	exit;
}
	
}
else
{
	$error = 'Cannot process Photo Gallery, please try again';
	include('add_gallery.php');	
	exit;
}
?>