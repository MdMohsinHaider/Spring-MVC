<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Home</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.15);
            padding: 40px 60px;
            border-radius: 16px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            max-width: 600px;
        }

        h1 {
            font-size: 42px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            font-weight: 300;
            line-height: 1.6;
        }

        .banner {
            font-size: 20px;
            font-weight: 500;
            margin-bottom: 25px;
            padding: 12px 20px;
            background: rgba(255,255,255,0.25);
            border-radius: 10px;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="banner">
        🚀 Welcome to Your First Spring MVC Application
    </div>

    <h1>Hello, Developer!</h1>

    <p>
        This is your beautifully styled home page built with JSP, CSS, and Spring MVC.
        You're now ready to explore controllers, views, and the full power of the Spring framework.
    </p>
</div>
</body>
</html>
