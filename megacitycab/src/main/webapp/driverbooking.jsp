<%@page import="model.driver"%>
<%@page import="java.util.List"%>
<%@page import="model.booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<booking> driverBookings = (List<booking>) request.getAttribute("driverBookings");

    System.out.println("🔍 JSP Loaded: Checking driverBookings list");
    if (driverBookings != null) {
        System.out.println("✅ Bookings in JSP: " + driverBookings.size());
        for (booking bk : driverBookings) {
            System.out.println("🟢 Booking: " + bk.getB_id() + " - " + bk.getV_number());
        }
    } else {
        System.out.println("❌ driverBookings is NULL in JSP.");
    }
    
    driver loggedInDriver = (driver) session.getAttribute("loggedInDriver");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Dashboard</title>
    <link rel="stylesheet" href="CSS/driverbooking.css">
    <script defer src="JS/driverhome.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <!-- 🚖 Sidebar -->
    <div class="sidebar">
        <div class="profile">
            <i class="fas fa-user-circle"></i>
            <h3><%= loggedInDriver.getD_name() %></h3>  <!-- ✅ Display Driver's Name -->
            <p>Driver</p>
        </div>
        <ul>
            <li><a href="driverhome.jsp"><i class="fas fa-home"></i> Dashboard</a></li>
            <li><a href="manageDriverBookings.jsp" class="active"><i class="fas fa-tasks"></i> Manage Bookings</a></li>
            <li><a href="profile.jsp"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="driverlogout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <!-- 🚀 Main Content -->
    <div class="main-content">
        <header>
            <h2><i class="fas fa-list"></i> My Bookings</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>

        <div class="booking-container">
            <h3>Assigned Bookings</h3>

            <!-- Refresh Bookings Button -->
            <form action="driverBookings" method="post">
                <button type="submit" class="refresh-btn">
                    <i class="fas fa-sync-alt"></i> Refresh Bookings
                </button>
            </form>

            <c:choose>
                <c:when test="${not empty driverBookings}">
                    <table>
                        <thead>
                            <tr>
                                <th>Booking ID</th>
                                <th>Customer Name</th>
                                <th>Phone</th>
                                <th>Vehicle No.</th>
                                <th>Pick-up Location</th>
                                <th>Drop Location</th>
                                <th>Date Time</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="booking" items="${driverBookings}">
                                <tr>
                                    <td>${booking.b_id}</td>
                                    <td>${booking.c_name}</td>
                                    <td>${booking.c_phone}</td>
                                    <td>${booking.v_number}</td>
                                    <td>${booking.pickup_location}</td>
                                    <td>${booking.drop_location}</td>
                                    <td>${booking.pickup_date}</td>
                                    <td class="status-${booking.booking_status.toLowerCase()}">
                                        ${booking.booking_status}
                                    </td>
                                    <td>
                                        <form action="updateBooking" method="post" class="status-update-form">
                                            <input type="hidden" name="bookingId" value="${booking.b_id}">
                                            <select name="status">
                                                <option value="Pending" <c:if test="${booking.booking_status == 'Pending'}">selected</c:if>>Pending</option>
                                                <option value="Confirmed" <c:if test="${booking.booking_status == 'Confirmed'}">selected</c:if>>Confirmed</option>
                                                <option value="On Ride" <c:if test="${booking.booking_status == 'On Ride'}">selected</c:if>>On Ride</option>
                                                <option value="Completed" <c:if test="${booking.booking_status == 'Completed'}">selected</c:if>>Completed</option>
                                            </select>
                                            <button type="submit" class="status-btn">Update</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <p class="error-message"><i class="fas fa-times-circle"></i> No assigned bookings available.</p>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>