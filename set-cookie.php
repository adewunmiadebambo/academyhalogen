<?php
session_start();

if($_POST['yes']){
setcookie('vAcademyYes', 'Accept Cookie', time() + 315400000, '/');
}else{
setcookie('vAcademyNo', 'Decline Cookie', time() + 3600, '/');	
}