document.addEventListener("DOMContentLoaded", function () {
    const toggleButton = document.getElementById("toggleMenu");
    const sidebar = document.querySelector(".sidebar");
    const mainContent = document.querySelector(".main-content");
    let sidebarOpen = true;

    // Sidebar Toggle Function
    toggleButton.addEventListener("click", function () {
        if (sidebarOpen) {
            sidebar.style.width = "0";
            mainContent.style.marginLeft = "0";
        } else {
            sidebar.style.width = "250px";
            mainContent.style.marginLeft = "250px";
        }
        sidebarOpen = !sidebarOpen;
    });

    // Hide sidebar by default on small screens
    function adjustSidebarOnResize() {
        if (window.innerWidth < 768) {
            sidebar.style.width = "0";
            mainContent.style.marginLeft = "0";
            sidebarOpen = false;
        } else {
            sidebar.style.width = "250px";
            mainContent.style.marginLeft = "250px";
            sidebarOpen = true;
        }
    }

    window.addEventListener("resize", adjustSidebarOnResize);
    adjustSidebarOnResize();

    // Highlight Active Page in Sidebar
    const currentPage = window.location.pathname.split("/").pop();
    document.querySelectorAll(".menu-link").forEach(link => {
        if (link.getAttribute("href") === currentPage) {
            link.classList.add("active");
        }
    });
});
