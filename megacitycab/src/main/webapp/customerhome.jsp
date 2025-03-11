<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Mega City Cab</title>
    <link rel="stylesheet" href="CSS/customerhome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <script defer src="JS/customer_about.js"></script>
</head>
<body>
    <!-- Navbar -->
    <header>
        <div class="navbar">
            <a href="customerhome.jsp" class="logo"><i class="fa-solid fa-taxi"></i> Mega City Cab</a>
            <nav>
                <ul class="nav-menu">
                    <li><a href="customerhome.jsp" class="active">Home</a></li>
                    <li><a href="customer_booking.jsp">Booking</a></li>
                    <li><a href="customer_about.jsp">About</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="logout.html">Logout</a></li>
                    
                </ul>
            </nav>
            
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <img src="image/home1.jpg" class="hero-img" alt="Taxi Service">
        <div class="hero-content">
            <h1>Your Reliable Cab Service</h1>
            <p>Book a ride with us and enjoy a comfortable and safe journey.
            Book a ride with us and enjoy a comfortable and safe journey.
            can you add navigation bar right side coner profile icon.</p>
            <a href="customer_booking.jsp" class="book-now-button">Book Now</a>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Jobs</a></li>
                    <li><a href="#">Brand Assets</a></li>
                    <li><a href="#">Investor Relations</a></li>
                    <li><a href="#">Terms of Service</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Features</h3>
                <ul>
                    <li><a href="#">Taxi Booking</a></li>
                    <li><a href="#">Corporate Travel</a></li>
                    <li><a href="#">Luxury Rides</a></li>
                    <li><a href="#">Customer Support</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Resources</h3>
                <ul>
                    <li><a href="#">Guides</a></li>
                    <li><a href="#">Research</a></li>
                    <li><a href="#">Experts</a></li>
                    <li><a href="#">Agencies</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Follow Us</h3>
                <div class="footer-social">
                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                </div>
            </div>
            <div class="footer-column">
                <h3>Newsletter</h3>
                <p>Stay updated with our latest news</p>
                <div class="newsletter">
                    <input type="email" placeholder="Enter Email" id="newsletter-email">
                    <button id="newsletter-btn"><i class="fa-solid fa-paper-plane"></i></button>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 All rights reserved | Mega City Cab</p>
        </div>
    </footer>
</body>
</html>
