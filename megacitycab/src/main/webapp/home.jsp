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
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
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
            background: rgba(0, 0, 0, 0.6);
        }
        .content {
            position: relative;
            z-index: 2;
            max-width: 600px;
            animation: fadeIn 1.5s ease-in-out;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 20px;
        }
        .btn {
            background: linear-gradient(135deg, #ffb300, #ff8f00);
            color: white;
            padding: 16px 40px;
            border: none;
            cursor: pointer;
            font-size: 22px;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 12px;
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(255, 179, 0, 0.5);
            min-width: 200px;
            justify-content: center;
        }
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 179, 0, 0.7);
        }
        .btn i {
            font-size: 24px;
        }
        .banner {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            background: linear-gradient(135deg, #ff6f00, #ff8f00);
            color: white;
            padding: 25px 100px;
            font-size: 36px;
            font-weight: bold;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4);
            opacity: 0;
            animation: bounceIn 1.5s ease-out forwards;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }
        @keyframes bounceIn {
            0% {
                opacity: 0;
                transform: translateX(-50%) scale(0.8);
            }
            50% {
                opacity: 1;
                transform: translateX(-50%) scale(1.1);
            }
            100% {
                opacity: 1;
                transform: translateX(-50%) scale(1);
            }
        }
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .title {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
            animation: fadeIn 1.5s ease-in-out;
        }
    </style>
    
</head>
<body>
    <div class="hero">
        <div class="overlay"></div>
        <div class="content">
            <div class="btn-container">
                <a href="register.jsp" class="btn"><i class="fas fa-user-plus"></i> Customer</a>
                <a href="login.jsp" class="btn"><i class="fas fa-sign-in-alt"></i> Driver</a>
            </div>
        </div>
    </div>
</body>
</html>