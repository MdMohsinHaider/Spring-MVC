<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About Us - Multi IoC Container Demo</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background: linear-gradient(135deg, #4a90e2, #007aff);
            padding: 40px;
            text-align: center;
            color: white;
        }

        header h1 {
            margin: 0;
            font-size: 42px;
            font-weight: 600;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h2 {
            color: #007aff;
            margin-top: 0;
        }

        p {
            line-height: 1.7;
            font-size: 16px;
        }

        .highlight-box {
            background: #eef6ff;
            border-left: 5px solid #007aff;
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
    <h1>About Us</h1>
    <p>Spring Web MVC — Multi IoC Container Example</p>
</header>

<div class="container">

    <h2>Who We Are</h2>
    <p>
        We are a team of Spring developers passionate about building scalable, modular, and maintainable
        enterprise applications. Our work often involves designing systems that use multiple IoC containers
        to separate concerns and improve application structure.
    </p>

    <div class="highlight-box">
        <h2>What Is a Multi‑IoC Container Setup?</h2>
        <p>
            In Spring Web MVC, the framework naturally supports multiple IoC containers. The
            <strong>root WebApplicationContext</strong> is created by <strong>ContextLoaderListener</strong> and contains
            shared beans such as services, repositories, and data sources. Each <strong>DispatcherServlet</strong>
            creates its own <strong>child WebApplicationContext</strong> containing controller‑specific or web‑layer beans.
        </p>
    </div>

    <h2>When Should You Use Multiple IoC Containers?</h2>
    <p>
        Multi‑IoC containers are ideal when you want to clearly separate your application layers. For example,
        shared backend components like services and DAOs belong in the root context, while web‑specific beans
        such as controllers, view resolvers, and handler mappings belong in the servlet context. This separation
        improves modularity, reduces bean conflicts, and enhances maintainability in large applications.
    </p>

    <h2>How Are Multiple IoC Containers Created?</h2>
    <p>
        Spring creates them automatically:
    </p>

    <div class="highlight-box">
        <p>
            <strong>1. Root IoC Container:</strong><br>
            Created by <em>ContextLoaderListener</em> and bound to the ServletContext using the key:<br>
            <code>WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE</code>
        </p>

        <p>
            <strong>2. Child IoC Container:</strong><br>
            Created by each <em>DispatcherServlet</em> using its own configuration file (e.g., <code>spring-servlet.xml</code>).
        </p>
    </div>

    <p>
        This layered container architecture is one of Spring’s strengths, allowing clean separation of concerns
        and flexible configuration across different parts of the application.
    </p>

</div>

<footer>
    © 2026 Multi IoC Container Demo — Spring Web MVC
</footer>

</body>
</html>
