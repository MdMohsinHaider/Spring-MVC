<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Error Occurred</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .error-box {
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
            color: #d63031;
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
            background: #ff416c;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
            margin: 5px;
            display: inline-block;
        }

        .btn:hover {
            background: #ff2e54;
        }

        .crossmark {
            font-size: 60px;
            color: #ff4b2b;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="error-box">
    <div class="crossmark">✖</div>
    <h2>Error Occurred</h2>

    <c:if test="${not empty errors}">
        <c:forEach items="${errors}" var="error">
            <p style="color:red;">${error}</p>
        </c:forEach>
    </c:if>

    <a href="open-account.jsp" class="btn">Try Again</a>
</div>

</body>
</html>
