<?php
session_start();
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$uname = mysqli_real_escape_string($connect, $_POST['matric']);
$pass = mysqli_real_escape_string($connect, $_POST['password']);

$query= mysqli_query($connect, "select * from alumni where matric = '$uname' && password = '$pass'");

$foundUser = mysqli_num_rows($query);
$row = mysqli_fetch_assoc($query);

if($foundUser > 0){

$_SESSION['alumni'] = $row['matric'];

header('Location: alumni-dashboard');
exit;

}else{
$error = "not found";
include('member-login.php');
exit;
}

?>
