const form = document.querySelector(".login form"),
errorText = form.querySelector(".error-txt"),
continueBtn = form.querySelector(".button input");

form.onsubmit = (e) => {
   e.preventDefault();  // preventing the form from automatically submitting
}

continueBtn.onclick = () => {
   let xhr = new XMLHttpRequest();
   xhr.open("POST","php/login.php",true);
   xhr.onload = () => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
         if (xhr.status === 200) {
            let data = xhr.response;
            // console.log(data);
            if (data == "Success") {
               location.href = "users.php";
            } else {
               errorText.textContent = data;
               errorText.style.display = "block";
            }
         }
      }
   }
   // We have to send the form data through php file
   let formData = new FormData(form);
   xhr.send(formData);
}