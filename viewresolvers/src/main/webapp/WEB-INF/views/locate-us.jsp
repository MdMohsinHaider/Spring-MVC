<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Locate Us</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f5f7fa;
            color: #333;
        }

        .header {
            background: linear-gradient(135deg, #4a90e2, #0077cc);
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
            max-width: 1100px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .info-section {
            margin-bottom: 30px;
        }

        .info-section h2 {
            font-size: 24px;
            color: #0077cc;
            margin-bottom: 10px;
        }

        .info-section p {
            font-size: 16px;
            line-height: 1.6;
        }

        .map-container {
            margin-top: 20px;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        iframe {
            width: 100%;
            height: 400px;
            border: 0;
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
        <h1>Locate Us</h1>
    </div>

    <div class="container">
        <div class="info-section">
            <h2>Our Office</h2>
            <p>
                Visit us at our main office for inquiries, support, or business meetings.
                We are located in a convenient area with easy access and parking.
            </p>

            <p>
                <strong>Address:</strong><br>
                123 Business Avenue,<br>
                Silver City, GA 30518<br>
                United States
            </p>

            <p>
                <strong>Phone:</strong> (555) 123‑4567<br>
                <strong>Email:</strong> contact@yourcompany.com
            </p>
        </div>

        <div class="map-container">
            <!-- Replace the src with your actual Google Maps embed link -->
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3315.123456789!2d-84.123456!3d34.123456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzTCsDA3JzI0LjQiTiA4NMKwMDcnMjguMyJX!5e0!3m2!1sen!2sus!4v0000000000000"
                allowfullscreen=""
                loading="lazy">
            </iframe>
        </div>
    </div>

    <div class="footer">
        © 2026 Your Company — All Rights Reserved
    </div>

</body>
</html>
