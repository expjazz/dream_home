console.log("test");
blurToggle = function () {
  document.getElementById("blur").classList.toggle("blur-active");
  document.getElementById("message-form").classList.toggle("d-none");
};

document
  .getElementById("message-toggler")
  .addEventListener("click", blurToggle);

document.getElementById("close-button").addEventListener("click", blurToggle);
