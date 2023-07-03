<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Attempt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
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

        .question-card {
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
        }

        .question-card h3 {
            color: #333;
            margin: 0;
        }

        .question-card p {
            color:black;
            margin: 10px 0;
            font-size: 20px;
            font-weight: bolder;
        }

        .options {
            margin-top: 10px;
        }

        .options label {
            display: block;
            margin-bottom: 5px;
        }

        .options input[type="checkbox"] {
            margin-right: 5px;
        }

        .submit-button {
            margin-top: 10px;
        }
        .submit-btn{
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
    </style>
</head>
<body>
    <div class="container">
        <%
            String url = "jdbc:mysql://localhost:3306/portal";
            String username = "root";
            String password = "";

            int quizId = Integer.parseInt(request.getParameter("quizId"));

            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);

                // Retrieve quiz information
                String quizQuery = "SELECT * FROM quizzes WHERE quiz_id = ?";
                stmt = conn.prepareStatement(quizQuery);
                stmt.setInt(1, quizId);
                rs = stmt.executeQuery();

                if (rs.next()) {
                    String quizTitle = rs.getString("title");
                    String quizDescription = rs.getString("description");

                    out.println("<h2>" + quizTitle + "</h2>");
                    out.println("<p>" + quizDescription + "</p>");

                    // Retrieve quiz questions
                    String questionQuery = "SELECT * FROM quiz_questions WHERE quiz_id = ?";
                    stmt = conn.prepareStatement(questionQuery);
                    stmt.setInt(1, quizId);
                    rs = stmt.executeQuery();

                    while (rs.next()) {
                        int questionNumber = rs.getInt("question_id");
                        String questionText = rs.getString("question_text");
                        String option1 = rs.getString("option1");
                        String option2 = rs.getString("option2");
                        String option3 = rs.getString("option3");
                        String option4 = rs.getString("option4");
                        out.println("<form method=\"post\" action=\"QuizResult.jsp\" class=\"submit-button\">");
                        out.println("<div class=\"question-card\">");
                        
                        out.println("<p>" + "Q :" + questionText + "</p>");
                        out.println("<div class=\"options\">");
                        out.println("<label><input type=\"checkbox\" name=\"answer\" value=\"" + option1 + "\"> " + option1 + "</label>");
                        out.println("<label><input type=\"checkbox\" name=\"answer\" value=\"" + option2 + "\"> " + option2 + "</label>");
                        out.println("<label><input type=\"checkbox\" name=\"answer\" value=\"" + option3 + "\"> " + option3 + "</label>");
                        out.println("<label><input type=\"checkbox\" name=\"answer\" value=\"" + option4 + "\"> " + option4 + "</label>");
                        out.println("</div>");
                        out.println("</div>");
                    }
                  
                    out.println("<input type=\"hidden\" name=\"quizId\" value=\"" + quizId + "\">");
                    out.println("<input type=\"submit\" class=\"submit-btn\" value=\"Submit Answer\">");
                    out.println("</form>");
                } else {
                    out.println("Quiz not found.");
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
