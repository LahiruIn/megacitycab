<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carz Service</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body, html {
            width: 100%;
            height: 100%;
            font-family: Arial, sans-serif;
        }
        .header {
            background-color: #0d47a1;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header a {
            color: white;
            text-decoration: none;
            margin-right: 15px;
        }
        .hero {
            width: 100%;
            height: 100vh;
            background: url('image/home.webp') no-repeat center center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            color: white;
            position: relative;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }
        .content {
            position: relative;
            z-index: 2;
            max-width: 600px;
        }
        .btn {
            background-color: #ffb300;
            color: black;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 18px;
            margin-top: 10px;
            text-decoration: none;
            display: inline-block;
            border-radius: 5px;
        }
        .navigation {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 20px;
        }
        .navigation a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px;
            transition: color 0.3s;
        }
        .navigation a:hover {
            color: #ffb300;
        }
    </style>
</head>
<body>
    <div class="header">
        <div>CARZ SERVICE</div>
        <div class="contact-info">
            <a href="mailto:name@websitename.com">&#9993; name@websitename.com</a>
            <a href="tel:+123456785522">&#128222; +1 2345 67855 22</a>
        </div>
    </div>
    <div class="hero">
        <div class="overlay"></div>
        <div class="content">
            <h1>WE CARE</h1>
            <p>About Your Car</p>
            <a href="register.jsp" class="btn">Register</a>
            <a href="login.jsp" class="btn">Login</a>
        </div>
        <div class="navigation">
            <a href="#">Home</a>
            <a href="#">About Us</a>
            <a href="#">Services</a>
            <a href="#">Gallery</a>
            <a href="#">Price</a>
            <a href="#">Our Team</a>
        </div>
    </div>
</body>
</html>
