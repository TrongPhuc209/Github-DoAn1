const ul = document.getElementById("nav-header");

const handleResize = () => {
    const containerWidth = ul.parentElement.offsetWidth;
    let totalWidth = 0;

    Array.from(ul.children).forEach((li) => {
        totalWidth += li.offsetWidth + 10; // 10 là khoảng cách giữa các thẻ <li>

        if (totalWidth > containerWidth) {
            li.style.display = "none";
        } else {
            li.style.display = "block";
        }
    });
};

window.addEventListener("resize", handleResize);
handleResize(); // Chạy một lần khi load trang
