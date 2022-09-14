const form = document.querySelector(".typing-area");
const inputField = form.querySelector(".input-field");
const sendBtn = form.querySelector("button");
const chatBox = document.querySelector(".chat-box");

form.onsubmit = (e) => {
  e.preventDefault(); // preventing the form from automatically submitting
};

function scrollToBottom() {
  chatBox.scrollTop = chatBox.scrollHeight;
}

sendBtn.onclick = () => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "php/insert-chat.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        inputField.value = ""; // once message sent, empty the input field
        scrollToBottom();
      }
    }
  };
  // We have to send the form data through php file
  let formData = new FormData(form);
  xhr.send(formData);
};

setInterval(() => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "php/get-chat.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        let data = xhr.response;
        // console.log(data);
        chatBox.innerHTML = data;
        scrollToBottom();
      }
    }
  };
  // We have to send the form data through php file
  let formData = new FormData(form);
  xhr.send(formData);
}, 500);
