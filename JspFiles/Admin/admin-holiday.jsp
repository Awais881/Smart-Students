<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Holiday</title>
    <style>
        body {
           
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            background-color: #00c78e;
    padding: 10px;
    color: white;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #666;
            font-weight: bold;
        }

        input[type="date"],
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Add Holiday</h2>

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
