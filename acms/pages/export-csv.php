<?php
session_start();
include("connect.php");

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=Event Registration.csv');

$output = fopen('php://output', 'w');

fputcsv($output, array('SN', 'Fullname', 'Mobile Number', 'Email Address', 'Event', 'Date Registered'));

$rows = mysqli_query($connect, "select id, name, phone, email, event, date from eventreg order by id asc");

while ($row = mysqli_fetch_assoc($rows)) {
fputcsv($output, $row);
}
fclose($output);
mysqli_close($connect);
exit();
?>