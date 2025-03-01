document.getElementById("driverForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent page reload

    let name = document.getElementById("name").value.trim();
    let nic = document.getElementById("nic").value.trim();
    let phone = document.getElementById("phone").value.trim();
    let email = document.getElementById("email").value.trim();
    let password = document.getElementById("password").value.trim();

    if (!name || !nic || !phone || !email || !password) {
        alert("Please fill in all fields.");
        return;
    }

    console.log("Driver Added:", { name, nic, phone, email, password });

    alert("🚗 Driver successfully added!");
    document.getElementById("driverForm").reset(); // Clear form fields
});

