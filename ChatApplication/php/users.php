<?php
session_start();
include_once "config.php";
$outgoing_id = $_SESSION['unique_id'];
$output = "";
$sql = mysqli_query($conn, "select * from users where not unique_id = {$outgoing_id}");
if (mysqli_num_rows($sql) == 1) {
   $output .= "No users are available to chat with";
} elseif (mysqli_num_rows($sql) > 0) {
   include "data.php";
}
echo $output;
?>
