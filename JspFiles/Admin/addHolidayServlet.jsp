<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    // Retrieve form data
    String date = request.getParameter("date");
    String name = request.getParameter("name");
    String description = request.getParameter("description");
    
    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/portal";
    String dbUsername = "root";
    String dbPassword = "";
    
    try {
        // Establish a connection to the database
        Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
        
        // Insert holiday details into the database
        String sql = "INSERT INTO holidays (holiday_date, holiday_name, description) VALUES (?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, date);
        statement.setString(2, name);
        statement.setString(3, description);
        statement.executeUpdate();
        
        statement.close();
        connection.close();
        
        // Redirect to a success page or display a success message
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        // Redirect to an error page or display an error message
        response.sendRedirect("error.jsp");
    }
%>
