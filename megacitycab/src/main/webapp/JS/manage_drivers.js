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

// Delete Button Alert
document.querySelectorAll(".delete-btn").forEach(button => {
    button.addEventListener("click", function () {
        alert("Are you sure you want to delete this user?");
    });
});

// Edit Button Click
document.querySelectorAll(".edit-btn").forEach(button => {
    button.addEventListener("click", function () {
        alert("Edit user functionality coming soon!");
    });
});
