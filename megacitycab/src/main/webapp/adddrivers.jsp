<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Driver</title>
    <link rel="stylesheet" href="CSS/add_drivers.css">
    <script defer src="JS/add_drivers.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <div class="form-container">
        <!-- Left Side (Full Image) -->
        <div class="form-image">
            <img src="image/driv.jpg" alt="Taxi Driver">
        </div>

        <!-- Right Side (Form) -->
        <div class="form-content">
            <h2><i class="fas fa-user-plus"></i> Add Driver</h2>
            <br>

            <form method="post" action="addDriver">
                <div class="input-group">
                    <label for="name"><i class="fas fa-user"></i> Full Name</label>
                    <input type="text" name="dname" id="name" placeholder="Enter driver name" required>
                </div>

                <div class="input-group">
                    <label for="nic"><i class="fas fa-id-card"></i> NIC</label>
                    <input type="text" name="dnic" id="nic" placeholder="Enter NIC number" required>
                </div>

                <div class="input-group">
                    <label for="phone"><i class="fas fa-phone"></i> Phone</label>
                    <input type="text" name="dphone" id="phone" placeholder="Enter phone number" required>
                </div>

                <div class="input-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="email" name="demail" id="email" placeholder="Enter email address" required>
                </div>

                <div class="input-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="dpassword" id="password" placeholder="Create a password" required>
                </div>
                
                <br>
                

                <button type="submit" value="Register" class="submit-btn"><i class="fas fa-save"></i> ADD </button>
            </form>
        </div>
    </div>

</body>
</html>
