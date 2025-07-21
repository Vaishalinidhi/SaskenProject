package com.sasken.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/applicantLogin")
public class ApplicantLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L; // ✅ Warning resolved

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        HttpSession session = request.getSession();
        session.setAttribute("applicantName", name);
        session.setAttribute("applicantEmail", email);

        response.sendRedirect("jobPortal.jsp");
    }
}
