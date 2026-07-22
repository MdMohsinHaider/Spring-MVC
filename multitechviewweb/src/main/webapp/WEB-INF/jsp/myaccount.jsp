<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Account</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f4f6fb;
            color: #333;
        }

        .header {
            background: linear-gradient(135deg, #6a5acd, #483d8b);
            padding: 30px;
            text-align: center;
            color: white;
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
            font-weight: 600;
        }

        .container {
            width: 85%;
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 4px 18px rgba(0,0,0,0.1);
        }

        .section-title {
            font-size: 24px;
            font-weight: 600;
            color: #483d8b;
            margin-bottom: 15px;
        }

        .download-links {
            margin-top: 20px;
        }

        .download-links a {
            display: inline-block;
            margin-right: 20px;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: 500;
            text-decoration: none;
            color: white;
            border-radius: 8px;
            transition: 0.3s ease;
        }

        .pdf-link {
            background: #e74c3c;
        }

        .pdf-link:hover {
            background: #c0392b;
        }

        .xls-link {
            background: #27ae60;
        }

        .xls-link:hover {
            background: #1e8449;
        }

        .footer {
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>My Account</h1>
</div>

<div class="container">
    <div class="section-title">Latest Statement</div>

    <p>Your latest monthly statement is available for download in the formats below.</p>

    <div class="download-links">
        <a href="${pageContext.request.contextPath}/latestStatement?type=pdf" class="pdf-link">Download PDF Statement</a>
        <a href="${pageContext.request.contextPath}/latestStatement?type=xls" class="xls-link">Download XLS Statement</a>
    </div>
</div>

<div class="footer">
    © 2026 Your Company — All Rights Reserved
</div>

</body>
</html>
