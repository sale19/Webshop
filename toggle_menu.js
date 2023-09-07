const menuList = document.getElementById('menuList');

menuList.style.maxHeight = "0px";

function displaySmallScreenMenu() {

document.addEventListener('click', function(e) {
const menuIcon = document.getElementById('menuIcon');

    if (!menuIcon.contains(e.target)) {
    menuList.style.maxHeight = "0px";

    } else {
   menuList.style.maxHeight = "200px";
}
});
}

/*const searchButton = document.querySelector('.search-btn');
searchButton.addEventListener('click', searchFunction);

function searchFunction() {
console.log('Clicked');
}*/