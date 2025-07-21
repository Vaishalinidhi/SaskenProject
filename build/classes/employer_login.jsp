<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employer Login</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f0f2f5; }
        .login-container {
            width: 350px; margin: 100px auto; padding: 30px; background: white;
            border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.2);
            position: relative;
        }
        .login-container h2 { text-align: center; margin-bottom: 20px; }
        label { display: block; margin-top: 10px; }
        input[type=text], input[type=email] {
            width: 100%; padding: 10px; margin-top: 5px; border: 1px solid #ccc; border-radius: 4px;
        }
        .top-right-applicant {
            position: absolute; top: 15px; right: 15px;
        }
        .top-right-applicant button {
            background-color: #0073e6; color: white; border: none; padding: 6px 12px;
            border-radius: 4px; cursor: pointer;
        }
        button.login-btn {
            margin-top: 20px; width: 100%; background-color: #007bff;
            color: white; border: none; padding: 10px; border-radius: 4px;
            cursor: pointer; font-size: 16px;
        }
    </style>
    <script>
        function goToApplicantLogin() {
            window.location.href = "applicant_login.jsp";
        }
    </script>
</head>
<body>
<div class="login-container">
    <div class="top-right-applicant">
        <button onclick="goToApplicantLogin()">Applicants</button>
    </div>
    <h2>Employer Login</h2>
    <form action="EmployerLoginServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="workEmail">Work Email:</label>
        <input type="email" id="workEmail" name="workEmail" required />

        <button type="submit" class="login-btn">Login</button>
    </form>
</div>
</body>
</html>
