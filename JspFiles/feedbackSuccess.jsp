<!DOCTYPE html>
<html>
<head>
    <title>Feedback Submitted Successfully</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 500px;
            margin: 100px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
        
        h1 {
            color: #333;
            text-align: center;
            font-size: 32px;
            margin-top: 0;
        }
        
        p {
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.5;
            text-align: center;
        }
        
        .link-back {
            text-align: center;
        }
        
        .link-back a {
            color: #333;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease;
        }
        
        .link-back a:hover {
            color: #ff7043;
        }
        
        .container:before {
            content: "";
            position: absolute;
            top: -20px;
            left: 50%;
            transform: translateX(-50%);
            width: 40px;
            height: 40px;
            background-color: #ff7043;
            border-radius: 50%;
            animation: pulse 1.5s infinite ease;
        }
        
        @keyframes pulse {
            0% {
                transform: translateX(-50%) scale(0);
                opacity: 0;
            }
            50% {
                transform: translateX(-50%) scale(1.2);
                opacity: 0.8;
            }
            100% {
                transform: translateX(-50%) scale(1);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Feedback Submitted Successfully</h1>
        <p>Thank you for your feedback! We appreciate your input.</p>
        <p class="link-back"><a href="../index.html">Go back to the homepage</a></p>
    </div>
</body>
</html>
