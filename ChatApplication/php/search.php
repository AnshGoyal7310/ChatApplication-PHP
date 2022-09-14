<?php
session_start();
// echo "Hello Ueser";
include_once "config.php";
$outgoing_id = $_SESSION['unique_id'];
$output = "";
$searchItem = mysqli_real_escape_string($conn, $_POST['searchItem']);
// echo $searchItem;

$sql = mysqli_query($conn,"select * from users where not unique_id = {$outgoing_id} and (fname like '%{$searchItem}%' or lname like '%{$searchItem}%')");
if (mysqli_num_rows($sql) > 0) {
   include "data.php";
} else {
   $output .= "No user found";
}
echo $output;
?>