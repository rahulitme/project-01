package com.user;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            String mobile = request.getParameter("user_mobile");
            String state = request.getParameter("user_state");
            String register = request.getParameter("user_register");
            String address = request.getParameter("user_address");

            // Database connection and insertion (similar to your original code)
            try {
                Class.forName("com.mysql.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "rahul@")) {
                    String q = "INSERT INTO user (name, password, email, mobile, state, register, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                    PreparedStatement pstmt = con.prepareStatement(q);
                    pstmt.setString(1, name);
                    pstmt.setString(2, password); // Store plain text password
                    pstmt.setString(3, email);
                    pstmt.setString(4, mobile);
                    pstmt.setString(5, state);
                    pstmt.setString(6, register);
                    pstmt.setString(7, address);

                    int rowsAffected = pstmt.executeUpdate();
                    if (rowsAffected > 0) {
                        out.println("<h1>Registration Successful!</h1>");
                    } else {
                        out.println("<h1>Error: Registration failed. Please try again later.</h1>");
                    }
                }
            } catch (SQLException | ClassNotFoundException e) {
                out.println("<h1>Error: Registration failed. Please try again later.</h1>");
                out.println("<p>Error message: " + e.getMessage() + "</p>");
            }
        }
    }
}
