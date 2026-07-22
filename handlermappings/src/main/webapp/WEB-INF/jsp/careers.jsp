<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Careers</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            margin: 0;
            padding: 0;
            color: #444;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 40px;
            background: #ffffffdd;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.15);
        }
        h1 {
            color: #8e44ad;
            text-align: center;
            margin-bottom: 20px;
        }
        .example-box {
            background: #fff3fc;
            padding: 20px;
            border-left: 5px solid #e84393;
            margin-top: 30px;
            border-radius: 8px;
        }
        code {
            background: #ffeef8;
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
    <h1>Careers</h1>
    <p>
        This page demonstrates how Spring MVC uses
        <strong>BeanNameUrlHandlerMapping</strong> to map URLs based on bean names.
    </p>

    <h2>How BeanNameUrlHandlerMapping Works</h2>
    <p>
        With <strong>BeanNameUrlHandlerMapping</strong>, the bean name itself becomes the URL.
        If your controller bean is named <code>/apply.htm</code>, Spring automatically maps that URL.
    </p>

    <div class="example-box">
        <h3>Example Configuration</h3>
        <pre>
&lt;bean name="/apply.htm" class="com.example.ApplyController"/&gt;
&lt;bean name="/jobs.htm" class="com.example.JobsController"/&gt;

&lt;bean class="org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping"/&gt;
        </pre>
    </div>

    <h2>Open Positions</h2>
    <ul>
        <li>Software Engineer</li>
        <li>UI/UX Designer</li>
        <li>Cloud Architect</li>
        <li>Technical Writer</li>
    </ul>
</div>
</body>
</html>
