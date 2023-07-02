<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/portal";
    String dbUsername = "root";
    String dbPassword = "";
    
    try {
        // Establish a connection to the database
        Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
        
        // Fetch holidays from the database
        String sql = "SELECT holiday_date, holiday_name FROM holidays";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        
        // Build JSON array of holiday events
        StringBuilder eventsJson = new StringBuilder();
        while (resultSet.next()) {
            String date = resultSet.getString("holiday_date");
            String name = resultSet.getString("holiday_name");
            
            // Format date to ISO 8601 format (YYYY-MM-DD)
            String isoDate = date.substring(0, 10);
            
            // Add event to JSON array
            eventsJson.append("{");
            eventsJson.append("\"title\": \"" + name + "\",");
            eventsJson.append("\"start\": \"" + isoDate + "\"");
            eventsJson.append("},");
        }
        
        resultSet.close();
        statement.close();
        connection.close();
        
        // Remove trailing comma from JSON array
        if (eventsJson.length() > 0) {
            eventsJson.setLength(eventsJson.length() - 1);
        }
        
        // Return JSON response
        response.setContentType("application/json");
        response.getWriter().write("[" + eventsJson.toString() + "]");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
