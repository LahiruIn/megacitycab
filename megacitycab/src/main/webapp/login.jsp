<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login | Mega City Cab</title>
  <link rel="stylesheet" href="CSS/logins.css">
  
</head>
<body>
  <div class="login-container">
    <div class="image-box">
      <img src="image/loog.png" alt="Login Image">
    </div>
    <div class="login-form">
      <h2 class="title">Login</h2>
      <form action="login" method="post">
        <div class="input-box">
          <span class="details">Username</span>
          <input type="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="input-box">
          <span class="details">Password</span>
          <input type="password" name="password" placeholder="Enter your password" required>
        </div>
        <div class="pass">
          <a href="#">Forgot password?</a>
        </div>
        <div class="button">
          <input type="submit" value="Login">
        </div>
        <div class="signup-link">Not a member? <a href="register.jsp">Register now</a></div>
      </form>
    </div>
  </div>
</body>
</html>
