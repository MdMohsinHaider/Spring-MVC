<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Our Clients</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      margin: 0;
      padding: 0;
      color: #333;
    }
    .container {
      width: 80%;
      margin: auto;
      padding: 40px;
      background: #ffffffcc;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }
    h1 {
      color: #2c3e50;
      text-align: center;
      margin-bottom: 20px;
    }
    .example-box {
      background: #f7f9fc;
      padding: 20px;
      border-left: 5px solid #3498db;
      margin-top: 30px;
      border-radius: 8px;
    }
    code {
      background: #eef;
      padding: 4px 6px;
      border-radius: 4px;
    }
    ul {
      line-height: 1.8;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Our Clients</h1>
  <p>
    This page demonstrates how Spring MVC uses
    <strong>SimpleUrlHandlerMapping</strong> to map URLs to controllers.
  </p>

  <h2>How SimpleUrlHandlerMapping Works</h2>
  <p>
    <strong>SimpleUrlHandlerMapping</strong> allows you to map URL patterns directly to controller beans.
    It is simple, explicit, and great for small applications.
  </p>

  <div class="example-box">
    <h3>Example Configuration</h3>
    <pre>
&lt;bean class="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping"&gt;
    &lt;property name="mappings"&gt;
        &lt;props&gt;
            &lt;prop key="/clients.htm"&gt;clientsController&lt;/prop&gt;
            &lt;prop key="/premium-clients.htm"&gt;premiumClientsController&lt;/prop&gt;
        &lt;/props&gt;
    &lt;/property&gt;
&lt;/bean&gt;

&lt;bean id="clientsController" class="com.example.ClientsController"/&gt;
&lt;bean id="premiumClientsController" class="com.example.PremiumClientsController"/&gt;
        </pre>
  </div>

  <h2>Client Categories</h2>
  <ul>
    <li>Enterprise Clients</li>
    <li>Small Businesses</li>
    <li>Government Organizations</li>
    <li>Non‑profit Partners</li>
  </ul>
</div>
</body>
</html>
