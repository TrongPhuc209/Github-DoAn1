function showMainMenu() {
  const menu = document.getElementById("show-main-menu");
  const blackBg = document.querySelector(".black-background");
  if (menu.style.display === "none") {
    menu.style.display = "block";
    blackBg.style.display = "block";
  } else {
    menu.style.display = "none";
    blackBg.style.display = "none";
  }

  menu.addEventListener("click", (e) => {
    e.stopPropagation();
  });
}

document.querySelector(".black-background").addEventListener("click", () => {
  // Ẩn cả menu và màn đen khi click vào nền đen
  document.getElementById("show-main-menu").style.display = "none";
  document.querySelector(".black-background").style.display = "none";
});

const loginForm = document.getElementById("login-form");
const registerForm = document.getElementById("register-form");
const toggleButton = document.getElementById("toggle-button");
const formTitle = document.getElementById("form-title");

let isLogin = true;

toggleButton.addEventListener("click", () => {
  isLogin = !isLogin;

  if (isLogin) {
    loginForm.style.display = "flex";
    registerForm.style.display = "none";
    formTitle.textContent = "Đăng nhập";
    toggleButton.textContent = "Đăng ký";
  } else {
    loginForm.style.display = "none";
    registerForm.style.display = "flex";
    formTitle.textContent = "Đăng ký";
    toggleButton.textContent = "Đăng nhập";
  }
});
