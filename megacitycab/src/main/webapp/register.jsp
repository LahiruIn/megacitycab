<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Responsive Registration Form | CodingLab </title>
  <link rel="stylesheet" href="CSS/register_style.css">

</head>
<body>
  <div class="container">
    <!-- Title section -->
    <div class="title">Registration</div>
    <div class="content">
      <!-- Registration form -->
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
        <div class="button">
          <input type="submit" value="Register">
        </div>
        <div class="signup-link">Not a member? <a href="login.jsp">login now</a></div>
      </form>
    </div>
  </div>
</body>
</html>