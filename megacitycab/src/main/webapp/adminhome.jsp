<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/admin_home.css">
    <script defer src="JS/admin_home.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <div class="sidebar">
        <h2 class="logo"><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <ul>
            <li><a href="adminhome.jsp" class="active"><i class="fas fa-chart-line"></i> Dashboard</a></li>
            <li><a href="manageusers.jsp"><i class="fas fa-users"></i>Manage Users</a></li>
            <li><a href="managedrivers.jsp"><i class="fa-solid fa-user-plus"></i>Manage Drivers</a></li>
            <li><a href="managevehicals.jsp"><i class="fa-solid fa-car"></i> Manage Vehicals</a></li>
            <li><a href="adminviewbooking.jsp"><i class="fas fa-book"></i> All Bookings</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-chart-line"></i> Dashboard</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>
        
        <div class="cards">
            <div class="card">
                <i class="fas fa-users"></i>
                <h3>Total Users</h3>
                <p><c:out value="${totalUsers}" /></p> <!-- Dynamic User Count -->
            </div>
            <div class="card">
                <i class="fas fa-shopping-cart"></i>
                <h3>Total Orders</h3>
                <p>875</p>
            </div>
            <div class="card">
                <i class="fas fa-dollar-sign"></i>
                <h3>Revenue</h3>
                <p>$12,540</p>
            </div>
            <div class="card">
                <i class="fas fa-comments"></i>
                <h3>Feedback</h3>
                <p>320</p>
            </div>
        </div>
    </div>
</body>
</html>
