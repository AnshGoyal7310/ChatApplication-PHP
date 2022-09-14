<?php 
session_start(); 
include_once "config.php";
$email = mysqli_real_escape_string($conn,$_POST['email']);
$password = mysqli_real_escape_string($conn,$_POST['password']);

if (!empty($email) && !empty($password)) {
// lets check users entered email and password matched with the database details
$sql = mysqli_query($conn,"SELECT * FROM users WHERE email = '{$email}' AND password = '{$password}'");
if (mysqli_num_rows($sql) > 0) {
$row = mysqli_fetch_assoc($sql);
$status = "Active now";
$sql2 = mysqli_query($conn,"update users set status = '{$status}' where unique_id = {$row['unique_id']}");
if ($sql2) {
   $_SESSION['unique_id'] = $row['unique_id'];
echo "Success";
}
} else {
   echo "Email or Password Incorrect!!!";
}
} else {
   echo "All input field are required";
}
?>