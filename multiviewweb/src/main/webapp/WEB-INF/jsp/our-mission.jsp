<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Our Mission</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Nunito', sans-serif;
      background: linear-gradient(135deg, #f8f9fa, #e3e7eb);
      margin: 0;
      padding: 0;
      color: #333;
    }

    header {
      background: #007aff;
      padding: 40px;
      text-align: center;
      color: white;
    }

    header h1 {
      margin: 0;
      font-size: 42px;
      font-weight: 700;
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
      color: #007aff;
    }

    p {
      line-height: 1.7;
      font-size: 16px;
    }

    .mission-box {
      background: #eaf4ff;
      border-left: 5px solid #007aff;
      padding: 20px;
      margin: 25px 0;
      border-radius: 8px;
    }

    footer {
      text-align: center;
      padding: 20px;
      margin-top: 40px;
      background: #dfe6ec;
      color: #555;
    }
  </style>
</head>

<body>

<header>
  <h1>Our Mission</h1>
  <p>Spring Web MVC — Direct View Mapping</p>
</header>

<div class="container">

  <h2>What Drives Us</h2>
  <p>
    Our mission is to simplify Spring Web MVC development by demonstrating clean patterns,
    lightweight controllers, and efficient view resolution. We believe in building applications
    that are easy to understand, maintain, and extend.
  </p>

  <div class="mission-box">
    <h2>About UrlFilenameViewController</h2>
    <p>
      This controller allows you to map URLs directly to JSP pages <strong>without writing a controller class</strong>.
      For example, a URL like <code>/our-mission</code> can automatically resolve to <code>our-mission.jsp</code>.
    </p>
    <p>
      It’s perfect for static pages such as About Us, Contact Us, FAQ, or Terms pages. It reduces boilerplate
      and keeps your application clean when no business logic is required.
    </p>
  </div>

  <p>
    By combining annotation-based configuration with lightweight view controllers, you can build
    Spring applications that are both powerful and elegant.
  </p>

</div>

<footer>
  © 2026 Spring Web MVC Demo — Direct View Mapping
</footer>

</body>
</html>
