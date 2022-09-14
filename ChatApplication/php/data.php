<?php 
while ($row = mysqli_fetch_assoc($sql)) {
   $sql2 = "select * from messages where (incoming_msg_id = {$row['unique_id']}
       or outgoing_msg_id = {$row['unique_id']}) and (outgoing_msg_id = {$outgoing_id}
       or incoming_msg_id = {$outgoing_id}) order by msg_id desc limit 1";
   $query = mysqli_query($conn,$sql2);
   $row2 = mysqli_fetch_assoc($query);
   if (mysqli_num_rows($query) > 0) {
$result = $row2['msg'];
   } else {
      $result = "No message available";
   }

   // trimming message if letters are more than 28 letters
   (strlen($result) > 28) ? $msg = substr($result, 0, 28).'...' : $msg = $result;
   if(isset($row2['outgoing_msg_id'])){
      ($outgoing_id == $row2['outgoing_msg_id']) ? $you = "You: " : $you = "";
   }else{
      $you = "";
   }
   // checking user is online or offline
   ($row['status'] == "Offline now") ? $offline = "offline" : $offline = "";
   $output .= '<a href="chat.php?user_id='.$row['unique_id'].'">
         <div class="content">
            <img src="php/images/' . $row['img'] . '" alt="">
            <div class="details">
               <span>' . $row['fname'] . ' ' . $row['lname'] . '</span>
               <p>' . $you . $msg . '</p>
            </div>
         </div>
         <div class="status-dot '.$offline.'"><i class="fas fa-circle"></i></div>
      </a>';
}
?>