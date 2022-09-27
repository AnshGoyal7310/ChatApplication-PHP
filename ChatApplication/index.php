<?php include_once "header.php"; ?>
<body>
   <!-- FOR CURSORS -->
<div class="cursor-1"></div>
<div class="cursor-2"></div>

   <div class="wrapper">
      <section class="form signup">
         <header>
            SIGNUP
         </header>
         <form action="#">
            <div class="error-txt"></div>
            <div class="name-details">
               <div class="field input">
                  <label for="">First Name</label>
                  <input type="text" name="fname" placeholder="First Name">
               </div>
               <div class="field input">
                  <label for="">Last Name</label>
                  <input type="text" name="lname" placeholder="Last Name">
               </div>
            </div>
            <div class="field input">
               <label for="">Email</label>
               <input type="text" name="email" placeholder="Enter email">
            </div>
            <div class="field input">
               <label for="">Password</label>
               <input type="password" name="password" placeholder="Enter password">
               <i class="fas fa-eye"></i>
            </div>
            <div class="field image">
               <label for="">Select Image</label>
               <input type="file" name="image">
            </div>
            <div class="field button">
               <input type="submit" value="SIGNUP">
            </div>
         </form>
         <div class="link">Already have an account? <a href="login.php">Login Now</a></div>
      </section>
   </div>

   <script src="js/pass-show-hide.js"></script>
   <script src="js/signup.js"></script>
</body>
</html>