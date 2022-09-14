const searchBar = document.querySelector(".users .search input");
const userList = document.querySelector(".users .users-list"),
searchBtn = document.querySelector(".users .search button");

searchBtn.onclick = () => {
   searchBar.classList.toggle("show");
   searchBar.focus();
   searchBtn.classList.toggle("active");
   searchBar.value = "";
};

searchBar.onkeyup = () => {
let searchItem = searchBar.value;
if (searchItem != "") {
   searchBar.classList.add("active");
} else {
   searchBar.classList.remove("active");
}
let xhr = new XMLHttpRequest();
   xhr.open("POST","php/search.php",true);
   xhr.onload = () => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
         if (xhr.status === 200) {
            let data = xhr.response;
            // console.log(data);
            userList.innerHTML = data;
         }
      }
   }
   xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
   xhr.send("searchItem=" + searchItem);
};

setInterval(() => {
   let xhr = new XMLHttpRequest();
   xhr.open("GET","php/users.php",true);
   xhr.onload = () => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
         if (xhr.status === 200) {
            let data = xhr.response;
            // console.log(data);
            if (!searchBar.classList.contains("active")) {
               userList.innerHTML = data;
            }
         }
      }
   }
   // We have to send the form data through php file
   // let formData = new FormData(form);
   xhr.send();
},500);