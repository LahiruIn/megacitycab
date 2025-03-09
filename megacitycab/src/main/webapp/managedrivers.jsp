<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Drivers</title>
    <link rel="stylesheet" href="CSS/managedrivers.css">
    <script defer src="JS/manage_drivers.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <div class="sidebar">
        <h2 class="logo"><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <ul>
            <li><a href="adminhome.jsp"><i class="fas fa-chart-line"></i> Dashboard</a></li>
            <li><a href="manageusers.jsp"><i class="fas fa-users"></i> Manage Users</a></li>
            <li><a href="managedrivers.jsp" class="active"><i class="fa-solid fa-user-plus"></i> Manage Drivers</a></li>
            <li><a href="managevehicals.jsp"><i class="fa-solid fa-car"></i> Manage Vehicles</a></li>
            <li><a href="adminviewbooking.jsp" class="active"><i class="fas fa-book"></i> All Bookings</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-users"></i> Manage Drivers</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>

        <div class="user-container">
            <div class="header-row">
                <h3>Driver Management</h3>
                <button class="add-user-btn" onclick="location.href='adddrivers.jsp'">
                    <i class="fas fa-user-plus"></i> Add Driver
                </button>
                <form action="manageDrivers" method="post">
                    <button type="submit" class="add-user-btn">View</button>
                </form>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>NIC</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th class="action-column">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="drv" items="${driver}">
                        <tr>
                            <td>${drv.d_id}</td>
                            <td>${drv.d_name}</td>
                            <td>${drv.d_nic}</td>
                            <td>${drv.d_phone}</td>
                            <td>${drv.d_email}</td>
                            <td>${drv.d_password}</td>
                            <td class="button-container">
                                <!-- Update Form -->
                                <form action="updatedrivers.jsp" method="post">
                                    <input type="hidden" name="dname" value="${drv.d_name}">
                                    <input type="hidden" name="dnic" value="${drv.d_nic}">
                                    <input type="hidden" name="dphone" value="${drv.d_phone}">
                                    <input type="hidden" name="demail" value="${drv.d_email}">
                                    <input type="hidden" name="dpassword" value="${drv.d_password}">
                                    <button class="edit-btn"><i class="fas fa-edit"></i> Update</button>
                                </form>

                                <!-- Delete Form -->
                                <form action="deleteDrivers" method="post">
                                    <input type="hidden" name="demail" value="${drv.d_email}">
                                    <button type="submit" class="delete-btn"><i class="fas fa-trash"></i> Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
