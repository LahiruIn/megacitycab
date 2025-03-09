<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="CSS/driver_login.css">
    <script defer src=""></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <div class="form-container">
        <!-- Left Side (Full Image) -->
        <div class="form-image">
            <img src="image/driv.jpg" alt="Login Image">
        </div>

        <!-- Right Side (Form) -->
        <div class="form-content">
            <h2><i class="fas fa-sign-in-alt"></i> Driver Login</h2>
            <br>

            <form method="post" action="driverlogin">
                <div class="input-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="email" name="demail" id="email" placeholder="Enter your email" required>
                </div>

                <div class="input-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="dpassword" id="password" placeholder="Enter your password" required>
                </div>
                
                <br>
                
                <button type="submit" class="submit-btn"><i class="fas fa-sign-in-alt"></i> LOGIN </button>
            </form>
        </div>
    </div>

</body>
</html>
