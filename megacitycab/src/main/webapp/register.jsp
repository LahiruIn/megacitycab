<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <link rel="stylesheet" href="CSS/registers.css">

</head>
<body>
  <div class="registration-container">
    <!-- Left Side Image -->
    <div class="image-container">
        <img src="image/reg.png" alt="Registration Image">
    </div>

    <!-- Right Side Form -->
    <div class="form-container">
      <div class="container">
        <div class="title">Registration</div>
        <div class="content">
          <form method="post" action="addCustomer">
            <div class="user-details">
              <div class="input-box">
                <span class="details">Full Name</span>
                <input type="text" name="name" placeholder="Enter your name" required>
              </div>
              <div class="input-box">
                <span class="details">Address</span>
                <input type="text" name="address" placeholder="Enter your address" required>
              </div>
              <div class="input-box">
                <span class="details">NIC</span>
                <input type="text" name="nic" placeholder="Enter your NIC" required>
              </div>
              <div class="input-box">
                <span class="details">Phone Number</span>
                <input type="text" name="phone" placeholder="Enter your number" required>
              </div>
              <div class="input-box">
                <span class="details">Username</span>
                <input type="email" name="email" placeholder="Enter your email" required>
              </div>
              <div class="input-box">
                <span class="details">Password</span>
                <input type="password" name="password" placeholder="Enter your password" required>
              </div>
            </div>
            <br>
            <div class="button">
              <input type="submit" value="Register">
            </div>
            <div class="signup-link">Not a member? <a href="login.jsp">Login now</a></div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
