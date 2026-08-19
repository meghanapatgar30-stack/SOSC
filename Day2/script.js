const togglebutton = document.getElementById("clickB");
const themeTitle = document.getElementById("themeTitle");

togglebutton.addEventListener("click", () => {

    document.body.classList.toggle("dark-mode");

    if (document.body.classList.contains("dark-mode")) {
        themeTitle.innerText = "Dark Mode";
    } else {
        themeTitle.innerText = "Light Mode";
    }

});