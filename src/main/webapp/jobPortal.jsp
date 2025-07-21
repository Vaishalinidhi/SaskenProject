<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    String user = (String) session.getAttribute("username"); 
    String name = (String) session.getAttribute("applicantName");
    String email = (String) session.getAttribute("applicantEmail");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 40px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
        }
        .job-card {
            border: 1px solid #ddd;
            border-radius: 12px;
            padding: 20px;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .apply-btn {
            background-color: #0078d4;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
        }
        .apply-btn:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>
    <h2>Welcome, <%= name %>!</h2>
    <p>Email: <%= email %></p>

    <div class="job-card">
        <h3>Software Engineer Intern</h3>
        <p>Location: Remote | Duration: 6 months</p>
        <p>Apply to build innovative software solutions with our expert team!</p>
        <a href="#" class="apply-btn">Apply Now</a>
    </div>

    <!-- You can add more job cards here -->
</body>
</html>
