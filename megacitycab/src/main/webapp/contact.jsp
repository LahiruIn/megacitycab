<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Mega City Cab</title>
    <link rel="stylesheet" href="CSS/contactcss.css">
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
                    <li><a href="service.jsp">Services</a></li>
                    <li><a href="contact.jsp" class="active">Contact</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- 📍 Contact Banner -->
    <section class="contact-banner">
        <h1>Contact Us</h1>
        <p><a href="customerhome.jsp">Home</a> → Contact Us</p>
    </section>

    <!-- 📩 Contact Section -->
    <section class="contact-section">
        <div class="contact-container">
            <!-- 📞 Contact Info -->
            <div class="contact-info">
                <h2>Get in Touch</h2>
                <p>If you have any questions or need assistance, feel free to contact us.</p>
                
                <div class="info-box">
                    <i class="fa-solid fa-phone"></i>
                    <p><strong>Phone:</strong> +94 77 123 4567</p>
                </div>

                <div class="info-box">
                    <i class="fa-solid fa-envelope"></i>
                    <p><strong>Email:</strong> support@megacitycab.com</p>
                </div>

                <div class="info-box">
                    <i class="fa-solid fa-location-dot"></i>
                    <p><strong>Address:</strong> 123, Main Street, Colombo, Sri Lanka</p>
                </div>

                <div class="social-media-section">
			    <h3>Follow Us</h3>
			    <div class="social-icons">
			        <a href="#"><i class="fa-brands fa-facebook"></i></a>
			        <a href="#"><i class="fa-brands fa-twitter"></i></a>
			        <a href="#"><i class="fa-brands fa-instagram"></i></a>
			        <a href="#"><i class="fa-brands fa-linkedin"></i></a>
			    </div>
</div>
            </div>

            <!-- 📝 Contact Form -->
            <div class="contact-form">
                <h2>Send Us a Message</h2>
                <form action="sendMessage" method="post">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email Address:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="message">Your Message:</label>
                    <textarea id="message" name="message" rows="5" required></textarea>

                    <button type="submit" class="yellow-btn"><i class="fa-solid fa-paper-plane"></i> Send Message</button>
                </form>
            </div>
        </div>
    </section>
    
    <!-- 🗺️ Google Map -->
    <section class="map-section">
        <h2>Our Location</h2>
        <div class="map-container">
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.824068496536!2d79.858757!3d6.921835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2595a86dcdf55%3A0x6a5e1a30dfbd91e0!2sColombo%20City%20Center!5e0!3m2!1sen!2slk!4v1709888888888"
                width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy">
            </iframe>
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
