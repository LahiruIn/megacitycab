<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.driver"%>

<%
    HttpSession sessionObj = request.getSession(false);

    // Prevent NullPointerException if session doesn't exist
    if (sessionObj == null || sessionObj.getAttribute("loggedInDriver") == null) {
        response.sendRedirect("driverlogin.jsp"); // Redirect to login if session is invalid
        return;
    }

    driver loggedInDriver = (driver) sessionObj.getAttribute("loggedInDriver");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Dashboard</title>
    <link rel="stylesheet" href="CSS/driver_home.css">
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
            <li><a href="driverbooking.jsp" class="menu-link"><i class="fas fa-car"></i> Bookings</a></li>
            <li><a href="driverprofile.jsp" class="menu-link"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="driverlogout.jsp" class="menu-link"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-tachometer-alt"></i> Driver Dashboard</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>
        
        <div class="cards">
            <div class="card">
                <i class="fas fa-car"></i>
                <h3>Total Rides</h3>
                <p>120</p> <!-- Placeholder Value -->
            </div>
            <div class="card">
                <i class="fas fa-road"></i>
                <h3>Distance Covered</h3>
                <p>1,450 km</p>
            </div>
            <div class="card">
                <i class="fas fa-dollar-sign"></i>
                <h3>Total Earnings</h3>
                <p>$5,200</p>
            </div>
            <div class="card">
                <i class="fas fa-star"></i>
                <h3>Ratings</h3>
                <p>4.8 ⭐</p>
            </div>
        </div>
    </div>
</body>
</html>
