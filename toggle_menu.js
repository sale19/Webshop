const menuList = document.getElementById('menuList');

menuList.style.maxHeight = "0px";

function displaySmallScreenMenu() {

    document.addEventListener('click', function (e) {
        const menuIcon = document.getElementById('menuIcon');

        if (!menuIcon.contains(e.target)) {
            menuList.style.maxHeight = "0px";

        } else {
            menuList.style.maxHeight = "200px";
        }
    });
}