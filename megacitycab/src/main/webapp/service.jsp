<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Mega City Cab</title>
    <link rel="stylesheet" href="CSS/services.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <!-- 🚖 Navbar -->
    <header>
        <div class="navbar">
            <a href="customerhome.jsp" class="logo"><i class="fa-solid fa-taxi"></i> Mega City Cab</a>
            <nav>
                <ul class="nav-menu">
                    <li><a href="customerhome.jsp">Home</a></li>
                    <li><a href="customer_booking.jsp">Booking</a></li>
                    <li><a href="customer_about.jsp">About</a></li>
                    <li><a href="service.jsp" class="active">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- 🌟 Service Banner -->
    <section class="service-banner">
        <h1>Our Services</h1>
        <p><a href="customerhome.jsp">Home</a> → Services</p>
    </section>

    <!-- 🚖 Services Section -->
    <section class="services-section">
        <h2>What We Offer</h2>
        <p class="service-description">We provide reliable and affordable taxi services with safety and comfort.</p>

        <div class="service-container">
            <!-- Service 1 -->
            <div class="service-card">
                <i class="fa-solid fa-car"></i>
                <h3>Standard Taxi Service</h3>
                <p>Reliable and affordable taxi rides for your daily travel needs.</p>
            </div>

            <!-- Service 2 -->
            <div class="service-card">
                <i class="fa-solid fa-user-tie"></i>
                <h3>Corporate Travel</h3>
                <p>Professional business travel services with premium cars.</p>
            </div>

            <!-- Service 3 -->
            <div class="service-card">
                <i class="fa-solid fa-plane"></i>
                <h3>Airport Transfers</h3>
                <p>Convenient airport pick-up and drop-off services.</p>
            </div>

            <!-- Service 4 -->
            <div class="service-card">
                <i class="fa-solid fa-star"></i>
                <h3>Luxury Rides</h3>
                <p>Exclusive high-end vehicles for special occasions.</p>
            </div>

            <!-- Service 5 -->
            <div class="service-card">
                <i class="fa-solid fa-route"></i>
                <h3>City Tours</h3>
                <p>Explore the city with our guided taxi tour service.</p>
            </div>

            <!-- Service 6 -->
            <div class="service-card">
                <i class="fa-solid fa-shield-halved"></i>
                <h3>Safety Guaranteed</h3>
                <p>Our professional drivers ensure your journey is safe and secure.</p>
            </div>
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
