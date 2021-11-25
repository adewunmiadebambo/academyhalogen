<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<?php
$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$summary = $content;
$filename = date('U');



   include('connect.php');
  $query = "insert into masterpage values ('', '".$title."', '".$summary."', '".$content."', '')"; 
  $result = mysqli_query($connect, $query);
  if($result)
  {
	  //Get the most recent entered data
	  $query2 = "select * from masterpage order by id desc";
	  $result2 = mysqli_query($connect, $query2);
	  $row2 = mysqli_fetch_array($result2);
	  $id = $row2['id'];
 
  $userfile = $_FILES['userfile']['tmp_name'];
  // $userfile_name is original file name
  $userfile_name = $_FILES['userfile']['name'];

 	
	$ext = get_extension($userfile_name);
	$dbImage = $filename.'.'.$ext;

  $upfile = 'uploads/pages/'.$dbImage;
  
	move_uploaded_file($userfile, $upfile);
	
	//update filename in database
	$query3 = "update masterpage set filename = '$dbImage' where id = '$id'";
	mysqli_query($connect, $query3);
	
	
	 $correct = 'A new page has been created';
	 include ('add_page.php');
}
else
{
$section = 'dberror';
include ('master-page.php');
}
?>
