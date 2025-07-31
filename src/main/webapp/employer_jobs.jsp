<%@ page import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employer Job View</title>
   <style>
    body {
        background-color: #eef2f3;
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background-color: #fff;
        padding: 30px 40px;
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        width: 600px;
        transition: 0.3s ease;
    }

    .card:hover {
        transform: scale(1.01);
    }

    .header {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
    }

    .header img {
        height: 50px;
        margin-right: 15px;
    }

    .company-name {
        font-size: 24px;
        font-weight: bold;
        color: #0a3d62;
    }

    .role {
        font-size: 26px;
        font-weight: bold;
        margin-top: 10px;
        color: #2c3e50;
    }

    .meta {
        font-size: 15px;
        color: #666;
        margin: 6px 0;
    }

    .green-note {
        color: green;
        font-weight: bold;
        margin-top: 8px;
    }

    .tags {
        margin-top: 15px;
    }

    .tag {
        display: inline-flex;
        align-items: center;
        background-color: #d4edda;
        color: #155724;
        border-radius: 20px;
        padding: 6px 12px;
        margin-right: 10px;
        font-size: 14px;
    }

    .tag img {
        height: 14px;
        margin-right: 6px;
    }

    .apply-btn {
        margin-top: 25px;
        background: linear-gradient(to right, #007bff, #0056b3);
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 10px;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s;
        text-decoration: none;
        display: inline-block;
    }

    .apply-btn:hover {
        background: linear-gradient(to right, #0056b3, #003f7f);
    }
</style>
   
</head>
<body>

<%
    int applicationCount = 0;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "vaishali");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM applications");
        if(rs.next()) {
            applicationCount = rs.getInt(1);
        }
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

<div class="card">
    <div class="header">
        <img src="https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Sasken_Logo.svg/1200px-Sasken_Logo.svg.png" alt="Sasken Logo">
        <div class="company-name">Sasken Technologies</div>
    </div>

    <div class="role">Software Engineer</div>
    <div class="meta">Location: Bangalore</div>
    <div class="meta">Type: Full-time</div>
    <div class="meta">Posted: 2 days ago</div>
  
    <div class="tags">
        <div class="tag">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
            Full-time
        </div>
        <div class="tag">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
            Offsite
        </div>
         
    </div>
    <div class="green-note"><%= applicationCount %> people have applied.</div>

   
    <a href="viewApplicants" class="apply-btn"><button>View All</button></a>
    
    
</div>

</body>
</html>
