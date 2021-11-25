<?php

function find_value($tab, $id, $col, $client)
{
global $connect;
$query = "select * from $tab where $id = '$client' order by id desc";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_array($result);
return $row[$col];
}


?>