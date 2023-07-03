<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #666;
            margin-top: 0;
        }

        .quiz-card {
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .quiz-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .quiz-card h3 {
            color: #333;
            margin: 0;
        }

        .quiz-card p {
            color: #888;
            margin: 10px 0;
        }

        .quiz-card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .quiz-card button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            String url = "jdbc:mysql://localhost:3306/portal";
            String username = "root";
            String password = "";

            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);

                // Retrieve quiz list
                String quizQuery = "SELECT * FROM quizzes";
                stmt = conn.prepareStatement(quizQuery);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    int quizId = rs.getInt("quiz_id");
                    String quizTitle = rs.getString("title");
                    String quizDescription = rs.getString("description");

                    out.println("<div class=\"quiz-card\">");
                    out.println("<h3>" + quizTitle + "</h3>");
                    out.println("<p>" + quizDescription + "</p>");
                    out.println("<form method=\"get\" action=\"quizAttempt.jsp\">");
                    out.println("<input type=\"hidden\" name=\"quizId\" value=\"" + quizId + "\">");
                    out.println("<button type=\"submit\">Start Quiz</button>");
                    out.println("</form>");
                    out.println("</div>");
                }

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (stmt != null) {
                    try {
                        stmt.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </div>
</body>
</html>
