<?php

$hostname_conn = "localhost:8889";
$database_conn = "aledoyco_cms";
$username_conn = "aledoyco_cms";
$password_conn = "certification";
$conn = mysql_pconnect($hostname_conn, $username_conn, $password_conn) or trigger_error(mysql_error(),E_USER_ERROR); 

  $mysql = mysql_select_db('aledoyco_cms');
    if (!$mysql)
  {
     echo 'Error: Could not Select database.  Please try again later.';
     exit;
}

?>