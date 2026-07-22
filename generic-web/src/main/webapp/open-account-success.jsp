<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Account Created Successfully</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #11998e, #38ef7d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-box {
            background: #ffffff;
            width: 450px;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            color: #2d7a4b;
            font-weight: 600;
            margin-bottom: 15px;
        }

        p {
            color: #444;
            font-size: 16px;
            margin-bottom: 25px;
        }

        .btn {
            padding: 12px 25px;
            background: #11998e;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
        }

        .btn:hover {
            background: #0f7a72;
        }

        .checkmark {
            font-size: 60px;
            color: #38ef7d;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="success-box">
    <div class="checkmark">✔</div>
    <h2>Account Created Successfully</h2>
    <p>Your new account has been created and is now active.</p>
</div>

</body>
</html>
