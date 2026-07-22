<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Open Account</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            width: 450px;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-weight: 600;
        }

        label {
            font-weight: 500;
            color: #444;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin: 8px 0 18px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s;
        }

        input:focus, select:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 5px rgba(106,17,203,0.4);
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #6a11cb;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #2575fc;
        }

        /* Error box styling */
        .error-box {
            background: #ffe6e6;
            border-left: 5px solid #ff4b2b;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            color: #b30000;
            font-size: 14px;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Open New Account</h2>

    <!-- 🔴 ERROR SECTION ADDED HERE -->
    <c:if test="${not empty errors}">
        <div class="error-box">
            <strong>Validation Errors:</strong>
            <ul style="margin-top: 10px;">
                <c:forEach var="err" items="${errors}">
                    <li>${err}</li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
    <!-- 🔴 END ERROR SECTION -->

    <form action="open-account" method="post">

        <c:choose>
            <c:when test="${not empty form}">
                <label>First Name</label>
                <input type="text" name="firstName" value="${form.getFirstName()}">

                <label>Last Name</label>
                <input type="text" name="lastName" value="${form.getLastName()}">

                <label>Gender</label>
                <select name="gender">
                    <option value="">-- Select Gender --</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>

                <label>Date of Birth</label>
                <input type="date" name="dob" value="${form.getDob()}">

                <label>Mobile Number</label>
                <input type="text" name="mobileNo" value="${form.getMobileNo()}">

                <label>Email Address</label>
                <input type="email" name="email"value="${form.getEmail()}">

                <label>Opening Balance</label>
                <input type="number" name="openingBalance" min="0" value="${form.getOpeningBalance()}">

                <label>Account Type</label>
                <select name="accountType">
                    <option value="">-- Select Account Type --</option>
                    <option value="Savings">Savings</option>
                    <option value="Current">Current</option>
                    <option value="Fixed Deposit">Fixed Deposit</option>
                </select>
            </c:when>
            <c:otherwise>
                <label>First Name</label>
                <input type="text" name="firstName">

                <label>Last Name</label>
                <input type="text" name="lastName" >

                <label>Gender</label>
                <select name="gender" >
                    <option value="">-- Select Gender --</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>

                <label>Date of Birth</label>
                <input type="date" name="dob" >

                <label>Mobile Number</label>
                <input type="text" name="mobileNo" >

                <label>Email Address</label>
                <input type="email" name="email">

                <label>Opening Balance</label>
                <input type="number" name="openingBalance" min="0">

                <label>Account Type</label>
                <select name="accountType">
                    <option value="">-- Select Account Type --</option>
                    <option value="Savings">Savings</option>
                    <option value="Current">Current</option>
                    <option value="Fixed Deposit">Fixed Deposit</option>
                </select>

            </c:otherwise>
        </c:choose>


        <button type="submit" class="btn">Create Account</button>
    </form>
</div>

</body>
</html>
