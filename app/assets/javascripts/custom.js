function clearMenu() {
    document.getElementById("home").className = "#";
    document.getElementById("team").className = "#";
    document.getElementById("contact").className = "#";
    document.getElementById("user").className = "dropdown";
}

function team() {
    clearMenu();
    document.getElementById("team").className = "active";
}

function contact() {
    clearMenu();
    document.getElementById("contact").className = "active";
}

function user() {
    clearMenu();
    document.getElementById("user").className = "dropdown active";
}

