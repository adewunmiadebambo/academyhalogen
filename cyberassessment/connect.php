<?php

$connect = mysqli_connect('localhost', 'halogens_assess', 'certification231', 'halogens_assess');

if(!$connect)
{
	echo 'Database connection error';
	exit;
}

?>
