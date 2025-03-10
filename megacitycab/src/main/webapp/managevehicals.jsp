<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Vehicles</title>
    <link rel="stylesheet" href="CSS/managevehicals.css">
    <script defer src="JS/manage_users.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <div class="sidebar">
        <h2 class="logo"><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <ul>
            <li><a href="adminhome.jsp"><i class="fas fa-chart-line"></i> Dashboard</a></li>
            <li><a href="manageusers.jsp"><i class="fas fa-users"></i> Manage Users</a></li>
            <li><a href="managedrivers.jsp"><i class="fa-solid fa-user-plus"></i> Manage Drivers</a></li>
            <li><a href="managevehicals.jsp" class="active"><i class="fa-solid fa-car"></i> Manage Vehicles</a></li>
            <li><a href="adminviewbooking.jsp" ><i class="fas fa-book"></i> All Bookings</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-users"></i> Manage Vehicles</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>

        <div class="user-container">
            <div class="header-row">
                <h3>Vehicle Management</h3>
                <button class="add-user-btn" onclick="location.href='addvehical.jsp'">
                    <i class="fas fa-user-plus"></i> Add Vehicle
                </button>
                <form action="manageVehicals" method="post">
                    <button type="submit" class="add-user-btn">View</button>
                </form>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>No</th>
                        <th>Type</th>
                        <th>Model</th>
                        <th>Seats</th>
                        <th>Image</th>
                        <th>Price</th>
                        <th>Driver</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                
                <tbody>
				    <c:choose>
				        <c:when test="${not empty vehList}">
				            <c:forEach var="veh" items="${vehList}">
				                <tr>
				                    <td>${veh.v_id}</td>
				                    <td>${veh.v_number}</td>
				                    <td>${veh.v_type}</td>
				                    <td>${veh.v_model}</td>
				                    <td>${veh.v_seat}</td>
				                    <td>
				                        <c:if test="${not empty veh.v_image}">
				                            <img src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(veh.v_image)}" width="100" height="100">
				                        </c:if>
				                        <c:if test="${empty veh.v_image}">
				                            No Image
				                        </c:if>
				                    </td>
				                    <td>${veh.v_price}</td>
				                    <td>${veh.d_name}</td>
				                    <td class="button-container">
				                        <form action="updatevehicals.jsp" method="post">
				                            <input type="hidden" name="vnumber" value="${veh.v_number}">
				                            <input type="hidden" name="vtype" value="${veh.v_type}">
				                            <input type="hidden" name="vmodel" value="${veh.v_model}">
				                            <input type="hidden" name="vseat" value="${veh.v_seat}">
				                            <input type="hidden" name="vprice" value="${veh.v_price}">
				                            <button class="edit-btn"><i class="fas fa-edit"></i> Update</button>
				                        </form>
				                        <form action="deleteVehicals" method="post" onsubmit="return confirm('Are you sure you want to delete this vehicle?');">
										    <input type="hidden" name="vnumber" value="${veh.v_number}">
										    <button type="submit" class="delete-btn"><i class="fas fa-trash"></i> Delete</button>
										</form>


				                    </td>
				                </tr>
				            </c:forEach>
				        </c:when>
				        
				    </c:choose>
				</tbody>

            </table>
        </div>
    </div>

</body>
</html>
