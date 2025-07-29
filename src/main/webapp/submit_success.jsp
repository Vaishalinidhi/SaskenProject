<!DOCTYPE html>
<html>
<head>
    <title>Application Submitted</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5361); /* Dark Blue gradient */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 20px;
            padding: 40px;
            width: 350px;
            text-align: center;
            color: #fff;
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
            position: relative;
        }

        .glass-card h2 {
            margin-bottom: 15px;
        }

        .glass-card p {
            font-size: 16px;
            color: #e0e0e0;
        }

        .close-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            background: rgba(255, 255, 255, 0.2);
            border: none;
            font-size: 20px;
            color: white;
            border-radius: 50%;
            width: 32px;
            height: 32px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .close-btn:hover {
            background: rgba(255, 255, 255, 0.4);
            color: black;
        }
    </style>
</head>
<body>
    <div class="glass-card">
        <button class="close-btn" onclick="goBack()">&times</button>
        <h2>Application Submitted.</h2>
        <p>Thank you! Your application has been successfully received.</p>
    </div>

    <script>
        function goBack() {
            window.history.back(); // or redirect to homepage if you prefer
        }
    </script>
</body>
</html>
