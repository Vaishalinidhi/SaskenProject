package com.sasken.servlet;

import com.sasken.utils.DBUtil;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;

@WebServlet("/viewApplicants")
public class ViewApplicantsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, String>> applicants = new ArrayList<>();

        try (Connection conn = DBUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM applications")) {

            while (rs.next()) {
                Map<String, String> applicant = new HashMap<>();
                applicant.put("id", rs.getString("id"));
                applicant.put("name", rs.getString("name"));
                applicant.put("email", rs.getString("email"));
                applicant.put("phone", rs.getString("phone"));
                applicant.put("resume", rs.getString("resume"));
                applicant.put("experience", rs.getString("experience"));
                applicant.put("appliedBefore", rs.getString("appliedBefore"));
                applicants.add(applicant);
            }

        } catch (SQLException e) {
            throw new ServletException("DB error", e);
        }

        request.setAttribute("applicants", applicants);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view_all.jsp");
        dispatcher.forward(request, response);
    }
}
