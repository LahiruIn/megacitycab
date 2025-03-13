<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Driver</title>
    <link rel="stylesheet" href="CSS/add_drivers.css">
    <script defer src="JS/add_drivers.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>


    <div class="form-container">
        <!-- Left Side (Full Image) -->
        <div class="form-image">
            <img src="image/drv.jpg" alt="Taxi Driver">
        </div>

        <!-- Right Side (Form) -->
        <div class="form-content">
            <h2><i class="fas fa-user-plus"></i> Update Driver</h2>
            <br>

            <form method="post" action="updateDriver">
                <div class="input-group">
                    <label for="name"><i class="fas fa-user"></i> Full Name</label>
                    <input type="text" name="dname" id="name" value="${param.dname}">
                </div>

                <div class="input-group">
                    <label for="nic"><i class="fas fa-id-card"></i> NIC</label>
                    <input type="text" name="dnic" id="nic" value="${param.dnic}">
                </div>

                <div class="input-group">
                    <label for="phone"><i class="fas fa-phone"></i> Phone</label>
                    <input type="text" name="dphone" id="phone" value="${param.dphone}">
                </div>

                <div class="input-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="email" name="demail" id="email" value="${param.demail}">
                </div>

                <div class="input-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="text" name="dpassword" id="password" value="${param.dpassword}">
                </div>
                
                <br>
                

                <button type="submit" value="Register" class="submit-btn"><i class="fas fa-save"></i> Update </button>
            </form>
        </div>
    </div>

</body>
</html>