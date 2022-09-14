const form = document.querySelector(".signup form");
const continueBtn = document.querySelector(".button input");
const errorText = document.querySelector(".error-txt");

form.onsubmit = (e) => {
  e.preventDefault();
};

continueBtn.onclick = () => {
  // console.log("Hello");
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "php/signup.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        let data = xhr.response;
        // console.log(data);
        if (data == "Success") {
          location.href = "./login.php";
        } else {
          errorText.style.display = "block";
          errorText.textContent = data;
        }
      }
    }
  };
  let formData = new FormData(form);
  xhr.send(formData);
};
