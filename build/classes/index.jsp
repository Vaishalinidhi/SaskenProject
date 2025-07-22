<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Talent Bridge</title>
    <style>
        /* Full-screen background with image and gradient overlay */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                        url('https://images.unsplash.com/photo-1504384308090-c894fdcc538d') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeIn 2s ease-in;
        }

        /* Glassmorphism card */
        .card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 50px 60px;
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
            border: 1px solid rgba(255, 255, 255, 0.18);
            text-align: center;
            color: #fff;
            width: 400px;
            animation: slideIn 1.5s ease;
        }

        .card h1 {
            font-size: 36px;
            margin-bottom: 15px;
        }

        .card p {
            font-size: 16px;
            color: #ddd;
            margin-bottom: 30px;
        }

        .start-button {
            background: #00c6ff;
            background: linear-gradient(to right, #0072ff, #00c6ff);
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            animation: pulse 2s infinite;
            transition: transform 0.2s;
        }

        .start-button:hover {
            transform: scale(1.05);
        }

        /* Fade-in effect */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Slide-in effect */
        @keyframes slideIn {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        /* Pulse effect */
        @keyframes pulse {
            0% { box-shadow: 0 0 0 0 rgba(0,198,255, 0.7); }
            70% { box-shadow: 0 0 0 10px rgba(0,198,255, 0); }
            100% { box-shadow: 0 0 0 0 rgba(0,198,255, 0); }
        }
    </style>

    <!-- Uncomment below to auto-redirect after 3 seconds -->
    <!--
    <script>
        setTimeout(function(){
            window.location.href = "applicant_login.jsp";
        }, 3000);
    </script>
    -->
</head>
<body>
    <div class="card">
        <h1>Talent Bridge</h1>
        <p>Click Start to continue</p>
        <form action="applicant_login.jsp" method="get">
            <button type="submit" class="start-button">Start</button>
        </form>
    </div>
</body>
</html>
