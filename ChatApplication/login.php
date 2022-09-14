<?php include_once "header.php"; ?>
<body>
   <div class="wrapper">
      <section class="form login">
         <header>
            Realtime Chat App
         </header>
         <form action="#">
            <div class="error-txt">This is the Error Message</div>
            <div class="field input">
               <label for="">Email</label>
               <input type="text" name="email" placeholder="Enter email">
            </div>
            <div class="field input">
               <label for="">Password</label>
               <input type="password" name="password" placeholder="Enter password">
               <i class="fas fa-eye"></i>
            </div>
            <div class="field button">
               <input type="submit" value="LOGIN">
            </div>
         </form>
         <div class="link">Not yet signed up? <a href="index.php">Signup Now</a></div>
      </section>
   </div>

   <script src="js/pass-show-hide.js"></script>
   <script src="js/login.js"></script>
</body>
</html>