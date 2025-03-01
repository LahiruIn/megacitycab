/**
 * 
 */
document.getElementById("toggleMenu").addEventListener("click", function () {
    let sidebar = document.querySelector(".sidebar");
    let mainContent = document.querySelector(".main-content");

    if (sidebar.style.width === "250px" || sidebar.style.width === "") {
        sidebar.style.width = "0";
        mainContent.style.marginLeft = "0";
    } else {
        sidebar.style.width = "250px";
        mainContent.style.marginLeft = "250px";
    }
});
