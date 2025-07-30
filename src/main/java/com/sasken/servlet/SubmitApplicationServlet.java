package com.sasken.servlet;

import com.sasken.utils.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/submitApplication")
public class SubmitApplicationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String resume = request.getParameter("resume");
        String experience = request.getParameter("experience");
        String appliedBefore = request.getParameter("appliedBefore");

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO applications (name, email, phone, resume, experience, appliedBefore) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, resume);
            stmt.setString(5, experience);
            stmt.setString(6, appliedBefore);
            stmt.executeUpdate();

            response.sendRedirect("submit_success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}