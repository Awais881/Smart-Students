<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Holiday</title>
</head>
<body>
    <h1>Add Holiday</h1>

    <form method="post" action="./addHolidayServlet.jsp">
        <label>Date:</label>
        <input type="date" name="date" required><br><br>
        
        <label>Name:</label>
        <input type="text" name="name" required><br><br>
        
        <label>Description:</label><br>
        <textarea name="description" rows="4" cols="50" required></textarea><br><br>
        
        <input type="submit" value="Add Holiday">
    </form>
</body>
</html>
