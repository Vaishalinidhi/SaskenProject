package com.sasken.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/employerLogin")
public class EmployerLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        // Store in session (optional, for later use)
        HttpSession session = request.getSession();
        session.setAttribute("employerName", name);
        session.setAttribute("employerEmail", email);

        // Redirect directly to employer jobs page without any validation
        response.sendRedirect("employer_jobs.jsp");
    }
}
