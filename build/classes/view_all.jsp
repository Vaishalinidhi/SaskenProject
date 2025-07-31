<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>All Applicants</title>
    <style>
        .card {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f7f7f7;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .card h3 {
            margin-bottom: 10px;
            color: #2c3e50;
        }
        .field {
            margin: 6px 0;
        }
        .buttons {
            margin-top: 12px;
        }
        .buttons button {
            margin-right: 10px;
            padding: 6px 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .select-btn {
            background-color: #27ae60;
            color: white;
        }
        .reject-btn {
            background-color: #c0392b;
            color: white;
        }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Applicant Submissions</h2>

    <%
        List<Map<String, String>> applicants = (List<Map<String, String>>) request.getAttribute("applicants");
        if (applicants != null && !applicants.isEmpty()) {
            for (Map<String, String> app : applicants) {
    %>
        <div class="card">
            <h3>Applicant <%= app.get("id") %></h3>
            <div class="field">Name: <%= app.get("name") %></div>
            <div class="field">Email: <%= app.get("email") %></div>
            <div class="field">Phone: <%= app.get("phone") %></div>
            <div class="field">Resume: <%= app.get("resume") %></div>
            <div class="field">Experience: <%= app.get("experience") %></div>
            <div class="field">Applied Before: <%= app.get("appliedBefore") %></div>

            <div class="buttons">
                <button class="select-btn">Select for Interview</button>
                <button class="reject-btn">Reject</button>
            </div>
        </div>
    <%
            }
        } else {
    %>
        <p style="text-align:center;">No applications found.</p>
    <%
        }
    %>
</body>
</html>
