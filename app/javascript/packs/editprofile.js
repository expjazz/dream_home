console.log("haha");
let userProfile = document.getElementById("user-profile");
let userForm = document.getElementById("user-form");
let profileButton = document.getElementById("view-profile");
let formButton = document.getElementById("edit-profile");
let formButtonHidden = document.getElementById("edit-profile-h");
let profileButtonHidden = document.getElementById("view-profile-h");
let messageButton = document.getElementById("inbox");
let messageButtonHidden = document.getElementById("inbox-h");

let formToggler = function () {
  userProfile.classList.toggle("d-none");
  profileButton.classList.toggle("bg-dark");
  userForm.classList.toggle("d-none");
  formButtonHidden.classList.toggle("bg-dark");
};
profileButton.addEventListener("click", (e) => {
  e.preventDefault();
  formToggler();
  console.log("uu");
});
formButton.addEventListener("click", (e) => {
  e.preventDefault();
  formToggler();
});
profileButtonHidden.addEventListener("click", (e) => {
  e.preventDefault;
  formToggler();
  e.stopImmediatePropagation();
  console.log("haha");
});

console.log("test");
blurToggle = function () {
  userProfile.classList.toggle("blur-active");
  document.getElementById("message-form").classList.toggle("d-none");
};

messageButton.addEventListener("click", (e) => {
  e.preventDefault();
  console.log("zzzzzzzzz");
  blurToggle();
});

messageButtonHidden.addEventListener("click", (e) => {
  e.preventDefault();

  blurToggle();
});
document.getElementById("message-form").addEventListener("click", (e) => {
  blurToggle();
});
