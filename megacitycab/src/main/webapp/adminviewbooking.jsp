<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Bookings</title>
    <link rel="stylesheet" href="CSS/adminviewbooking.css">
    <script defer src="JS/manage_booking.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <div class="sidebar">
        <h2 class="logo"><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <ul>
            <li><a href="adminhome.jsp"><i class="fas fa-chart-line"></i> Dashboard</a></li>
            <li><a href="manageusers.jsp"><i class="fas fa-users"></i> Manage Users</a></li>
            <li><a href="managedrivers.jsp"><i class="fa-solid fa-user-plus"></i> Manage Drivers</a></li>
            <li><a href="managevehicals.jsp"><i class="fa-solid fa-car"></i> Manage Vehicles</a></li>
            <li><a href="adminviewbooking.jsp" class="active"><i class="fas fa-book"></i> All Bookings</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2><i class="fas fa-book"></i> All Bookings</h2>
            <button id="toggleMenu"><i class="fas fa-bars"></i></button>
        </header>

        <div class="booking-container">
            <div class="header-row">
                <h3>All Bookings</h3>
                <form action="manageBooking" method="post">
                    <button type="submit" class="view-bookings-btn">View Bookings</button>
                </form>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Customer Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Vehicle No</th>
                        <th>Pickup Location</th>
                        <th>Drop Location</th>
                        <th>Pickup Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="booking" items="${bookings}">
                        <tr>
                            <td>${booking.b_id}</td>
                            <td>${booking.c_name}</td>
                            <td>${booking.c_email}</td>
                            <td>${booking.c_phone}</td>
                            <td>${booking.v_number}</td>
                            <td>${booking.pickup_location}</td>
                            <td>${booking.drop_location}</td>
                            <td>${booking.pickup_date}</td>
                            <td class="${booking.booking_status eq 'Pending' ? 'status-pending' :
                                        booking.booking_status eq 'Confirmed' ? 'status-confirmed' :
                                        booking.booking_status eq 'Cancelled' ? 'status-cancelled' :
                                        booking.booking_status eq 'On Ride' ? 'status-onride' :
                                        'status-completed'}">
                                ${booking.booking_status}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
