<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Service</title>
    <link rel="stylesheet" href="CSS/customer_home.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header>
        <div class="navbar">
            <a href="index.html" class="logo">Taxi Service</a>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="customer_booking.jsp">About</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <section class="hero">
        <div class="hero-content">
            <h1>Need a Ride? Call Us Now!</h1>
            <p>Fast, reliable, and comfortable rides at your service.</p>
            <button onclick="bookTaxi()">Book a Taxi</button>
        </div>
    </section>

    <section class="about">
        <h2>About Us</h2>
        <p>We are a premier taxi service committed to providing high-quality, timely, and reliable transportation for our customers.</p>
    </section>

    <section class="services">
        <h2>Our Services</h2>
        <div class="service-container">
            <div class="service-item">City Rides</div>
            <div class="service-item">Airport Transfers</div>
            <div class="service-item">Corporate Travel</div>
        </div>
    </section>

    <section class="gallery">
        <h2>Gallery</h2>
        <div class="image-container">
            <img src="image/driv.jpg" alt="Taxi Image">
            <img src="image/homes.jpg" alt="Taxi Image">
        </div>
    </section>

    <section class="contact">
        <h2>Contact Us</h2>
        <form>
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" required></textarea>
            <button type="submit">Send</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2024 Taxi Service. All rights reserved.</p>
    </footer>
</body>
</html>
    