<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --bg: #0f172a;
            --card-bg: #1e293b;
            --accent: #38bdf8;
            --accent-soft: #0ea5e9;
            --text-main: #e5e7eb;
            --text-muted: #9ca3af;
            --danger: #f97373;
            --success: #4ade80;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Roboto', system-ui, -apple-system, BlinkMacSystemFont, sans-serif;
            background: radial-gradient(circle at top left, #1d4ed8 0, #0f172a 40%, #020617 100%);
            color: var(--text-main);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 32px;
            background: rgba(15, 23, 42, 0.85);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(148, 163, 184, 0.3);
        }

        .navbar .logo {
            font-weight: 700;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            color: var(--accent);
        }

        .navbar .nav-links {
            display: flex;
            gap: 20px;
            font-size: 0.9rem;
        }

        .navbar .nav-links a {
            color: var(--text-muted);
            text-decoration: none;
            padding: 6px 10px;
            border-radius: 999px;
            transition: all 0.2s ease;
        }

        .navbar .nav-links a:hover {
            color: var(--text-main);
            background: rgba(148, 163, 184, 0.2);
        }

        .container {
            flex: 1;
            padding: 24px 32px 32px;
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 24px;
        }

        .card {
            background: var(--card-bg);
            border-radius: 18px;
            padding: 20px 22px;
            box-shadow: 0 18px 40px rgba(15, 23, 42, 0.7);
            border: 1px solid rgba(148, 163, 184, 0.35);
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-bottom: 16px;
        }

        .card-title {
            font-size: 1.1rem;
            font-weight: 500;
        }

        .card-subtitle {
            font-size: 0.8rem;
            color: var(--text-muted);
        }

        .pill {
            font-size: 0.75rem;
            padding: 4px 10px;
            border-radius: 999px;
            background: rgba(56, 189, 248, 0.15);
            color: var(--accent-soft);
            border: 1px solid rgba(56, 189, 248, 0.5);
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 16px;
            margin-top: 8px;
        }

        .stat {
            padding: 12px 14px;
            border-radius: 14px;
            background: rgba(15, 23, 42, 0.9);
            border: 1px solid rgba(148, 163, 184, 0.35);
        }

        .stat-label {
            font-size: 0.75rem;
            color: var(--text-muted);
        }

        .stat-value {
            margin-top: 6px;
            font-size: 1.2rem;
            font-weight: 500;
        }

        .stat-trend {
            margin-top: 4px;
            font-size: 0.75rem;
        }

        .stat-trend.up {
            color: var(--success);
        }

        .stat-trend.down {
            color: var(--danger);
        }

        .activity-list {
            margin-top: 8px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            font-size: 0.85rem;
        }

        .activity-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 8px 10px;
            border-radius: 10px;
            background: rgba(15, 23, 42, 0.9);
            border: 1px solid rgba(148, 163, 184, 0.3);
        }

        .activity-label {
            color: var(--text-main);
        }

        .activity-meta {
            font-size: 0.75rem;
            color: var(--text-muted);
        }

        .badge {
            padding: 4px 8px;
            border-radius: 999px;
            font-size: 0.7rem;
        }

        .badge-success {
            background: rgba(34, 197, 94, 0.15);
            color: var(--success);
            border: 1px solid rgba(34, 197, 94, 0.5);
        }

        .badge-warning {
            background: rgba(234, 179, 8, 0.15);
            color: #facc15;
            border: 1px solid rgba(234, 179, 8, 0.5);
        }

        .footer {
            padding: 10px 32px 18px;
            font-size: 0.75rem;
            color: var(--text-muted);
            text-align: right;
        }

        @media (max-width: 900px) {
            .container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">MY DASHBOARD</div>
    <div class="nav-links">
        <a href="#">Overview</a>
        <a href="#">Reports</a>
        <a href="#">Settings</a>
    </div>
</div>

<div class="container">
    <!-- Left: main stats -->
    <div class="card">
        <div class="card-header">
            <div>
                <div class="card-title">Today’s Snapshot</div>
                <div class="card-subtitle">Quick overview of activity and performance</div>
            </div>
            <span class="pill">Live · Updated just now</span>
        </div>

        <div class="stats-grid">
            <div class="stat">
                <div class="stat-label">Active Users</div>
                <div class="stat-value">1,248</div>
                <div class="stat-trend up">▲ +8.3% vs yesterday</div>
            </div>
            <div class="stat">
                <div class="stat-label">New Signups</div>
                <div class="stat-value">96</div>
                <div class="stat-trend up">▲ +3.1% vs last week</div>
            </div>
            <div class="stat">
                <div class="stat-label">Error Rate</div>
                <div class="stat-value">0.7%</div>
                <div class="stat-trend down">▼ -0.4% vs last release</div>
            </div>
        </div>
    </div>

    <!-- Right: recent activity -->
    <div class="card">
        <div class="card-header">
            <div>
                <div class="card-title">Recent Activity</div>
                <div class="card-subtitle">Latest events across your application</div>
            </div>
        </div>

        <div class="activity-list">
            <div class="activity-item">
                <div>
                    <div class="activity-label">New deployment completed</div>
                    <div class="activity-meta">Version 2.3.1 · 5 minutes ago</div>
                </div>
                <span class="badge badge-success">Healthy</span>
            </div>

            <div class="activity-item">
                <div>
                    <div class="activity-label">API latency spike detected</div>
                    <div class="activity-meta">Region: US‑East · 22 minutes ago</div>
                </div>
                <span class="badge badge-warning">Investigate</span>
            </div>

            <div class="activity-item">
                <div>
                    <div class="activity-label">New team member added</div>
                    <div class="activity-meta">Role: Developer · 1 hour ago</div>
                </div>
                <span class="badge badge-success">Onboarded</span>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    © <%= java.time.Year.now() %> My Dashboard · Built with JSP & Spring MVC
</div>

</body>
</html>
