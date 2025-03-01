<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | CodingLab</title>
  <link rel="stylesheet" href="CSS/login_styles.css">
</head>
<body>
  <div class="container">
    <!-- Title section -->
    <div class="title">Login</div>
    
    <div class="content">
      <form action="login" method="post">
        <div class="user-details">

          <div class="input-box">
            <span class="details">Username</span>
            <input type="email" name="email" placeholder="Enter your email or username" required>
          </div>

          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="password" placeholder="Enter your password" required>
          </div>
        </div>

        <div class="pass"><a href="#">Forgot password?</a></div>
        <!-- Submit button -->
        <div class="button">
          <input type="submit" value="Login">
        </div>
        <div class="signup-link">Not a member? <a href="register.jsp">Signup now</a></div>
      </form>
    </div>
  </div>
</body>
</html>