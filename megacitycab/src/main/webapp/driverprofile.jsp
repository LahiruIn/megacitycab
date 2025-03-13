<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.driver"%>

<%
    HttpSession sessionObj = request.getSession(false);

    // Redirect to login if session is invalid
    if (sessionObj == null || sessionObj.getAttribute("loggedInDriver") == null) {
        response.sendRedirect("driverlogin.jsp");
        return;
    }

    driver loggedInDriver = (driver) sessionObj.getAttribute("loggedInDriver");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Profile</title>
    <link rel="stylesheet" href="CSS/driver_profile.css">
    <script defer src="JS/driverhome.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <div class="sidebar">
        <div class="profile">
            <i class="fas fa-user-circle"></i>
            <h3><%= loggedInDriver.getD_name() %></h3>  <!-- ✅ Display Driver's Name -->
            <p>Driver</p>
        </div>
        
        <ul>
            <li><a href="driverhome.jsp" class="menu-link"><i class="fas fa-chart-line"></i> Driver Dashboard</a></li>
            <li><a href="driverbooking.jsp" class="menu-link"><i class="fas fa-car"></i> Manage Bookings</a></li>
            <li><a href="driverprofile.jsp" class="menu-link"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="driverlogout.jsp" class="menu-link"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-tachometer-alt"></i> Profile</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>

        <div class="profile-container">
            <div class="profile-card">
                <i class="fas fa-user-circle profile-icon"></i>
                <h3><%= loggedInDriver.getD_name() %></h3>
                <p>Email: <%= loggedInDriver.getD_email() %></p>
                <p>Phone: <%= loggedInDriver.getD_phone() %></p>
                <p>Status: <%= loggedInDriver.getD_status() %></p>
                
                <form action="updatedriverProfile" method="post">
                    <label for="d_phone">Phone:</label>
                    <input type="text" id="d_phone" name="d_phone" value="<%= loggedInDriver.getD_phone() %>">

                    <label for="d_password">New Password:</label>
                    <input type="password" id="d_password" name="d_password" placeholder="Enter new password">
                    
                    <button type="submit" class="update-btn">Update Profile</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
