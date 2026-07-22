<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #dfe9f3, #ffffff);
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background: #4a90e2;
            padding: 40px;
            text-align: center;
            color: white;
        }

        header h1 {
            margin: 0;
            font-size: 40px;
            font-weight: 600;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h2 {
            color: #4a90e2;
        }

        p {
            line-height: 1.7;
            font-size: 16px;
        }

        .info-box {
            background: #eef6ff;
            border-left: 5px solid #4a90e2;
            padding: 20px;
            margin: 25px 0;
            border-radius: 8px;
        }

        footer {
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            background: #e9eef3;
            color: #555;
        }
    </style>
</head>

<body>

<header>
    <h1>Contact Us</h1>
    <p>Spring Web MVC — Java-Based Configuration</p>
</header>

<div class="container">

    <h2>Reach Out to Our Team</h2>
    <p>
        We love hearing from developers, architects, and Spring enthusiasts. Whether you have questions,
        feedback, or collaboration ideas, feel free to reach out. Our team is dedicated to helping you
        build clean, modular, and annotation-driven Spring applications.
    </p>

    <div class="info-box">
        <h2>About AbstractAnnotationConfigDispatcherServlet</h2>
        <p>
            This servlet is used when you configure Spring Web MVC using <strong>Java-based configuration</strong>
            instead of XML. It loads classes annotated with <code>@Configuration</code>, <code>@EnableWebMvc</code>,
            and other Spring annotations. This approach is cleaner, type-safe, and eliminates XML files.
        </p>
        <p>
            When using this servlet, your controllers, view resolvers, and handler mappings are all defined
            inside Java classes, making your application easier to maintain and refactor.
        </p>
    </div>

    <h2>Contact Information</h2>
    <p>Email: support@springdemo.com</p>
    <p>Phone: (555) 123-4567</p>

</div>

<footer>
    © 2026 Spring Web MVC Demo — Annotation-Based Configuration
</footer>

</body>
</html>
