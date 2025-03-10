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
    <link rel="stylesheet" href="CSS/driverprofile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <!-- 🚖 Sidebar -->
    <div class="sidebar">
        <h2 class="logo"><i class="fas fa-user-tie"></i> Driver Panel</h2>
        <ul>
            <li><a href="driverhome.jsp"><i class="fas fa-home"></i> Dashboard</a></li>
            <li><a href="driverbooking.jsp"><i class="fas fa-car"></i> Bookings</a></li>
            <li><a href="driverprofile.jsp" class="active"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="driverlogout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <!-- 🚀 Main Content -->
    <div class="main-content">
        <header>
            <h2><i class="fas fa-user"></i> Profile</h2>
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
