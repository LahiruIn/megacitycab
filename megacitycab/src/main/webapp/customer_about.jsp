<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Taxi Service</title>
    <link rel="stylesheet" href="CSS/customerabout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <script defer src="JS/customer_about.js"></script>
</head>
<body>
    <header>
        <div class="navbar">
            <a href="customerhome.jsp" class="logo"><i class="fa-solid fa-taxi"></i> Mega City Cab</a>
            <nav>
                <ul class="nav-menu">
                    <li><a href="customerhome.jsp">Home</a></li>
                    <li><a href="customer_booking.jsp">Booking</a></li>
                    <li><a href="customer_about.jsp" class="active">About</a></li>
                    <li><a href="service.jsp">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <section class="about-banner">
        <h1>About Us</h1>
        <p><a href="customerhome.jsp">Home</a> → About Us</p>
    </section>
    <br><br>

    <section class="about-content">
        <div class="about-container">
            <div class="about-image">
                <img src="image/aboutimg.jpg" alt="About Taxi Service">
            </div>
            <div class="about-text">
                <h2><i class="fa-solid fa-globe"></i> Globally Connected by Large Network</h2>
                <h4> We are here to listen and deliver excellence</h4>
                <p>We provide premium and reliable taxi services ensuring safety, convenience, and affordability for our customers. With a vast network of professional drivers and high-standard vehicles, we are dedicated to enhancing your travel experience.</p>
                <p>Our commitment to quality service and customer satisfaction makes us a leading name in the industry. Whether you need a ride for daily commutes or luxury travel, we are here to serve you.</p>
                <button class="yellow-btn" id="details-btn"><i class="fa-solid fa-info-circle"></i> Get Details</button>
            </div>
        </div>
    </section>
    
    <!-- Image Gallery Section -->
    <section class="image-gallery">
        <h2>Our Gallery</h2>
        <br>
        <div class="gallery-container">
            <div class="gallery-item"><img src="image/ga1.webp" alt="Gallery Image 1"></div>
            <div class="gallery-item"><img src="image/ga2.jpg" alt="Gallery Image 2"></div>
            <div class="gallery-item"><img src="image/ga3.jpg" alt="Gallery Image 3"></div>
            <div class="gallery-item"><img src="image/ga7.jpg" alt="Gallery Image 4"></div>
            <div class="gallery-item"><img src="image/ga5.jpg" alt="Gallery Image 5"></div>
            <div class="gallery-item"><img src="image/ga6.webp" alt="Gallery Image 6"></div>
        </div>
    </section>
    
    <br><br>
    
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
