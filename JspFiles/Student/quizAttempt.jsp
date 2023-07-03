<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Attempt</title>
</head>
<body>
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

                    out.println("<h3>Question " + questionNumber + "</h3>");
                    out.println("<p>" + questionText + "</p>");
                    out.println("<form method=\"post\" action=\"QuizResult.jsp\">");
                    out.println("<input type=\"hidden\" name=\"quizId\" value=\"" + quizId + "\">");
                    out.println("<input type=\"hidden\" name=\"questionNumber\" value=\"" + questionNumber + "\">");
                    out.println("<input type=\"checkbox\" name=\"answer\" value=\"" + option1 + "\">" + option1 + "<br>");
                    out.println("<input type=\"checkbox\" name=\"answer\" value=\"" + option2 + "\">" + option2 + "<br>");
                    out.println("<input type=\"checkbox\" name=\"answer\" value=\"" + option3 + "\">" + option3 + "<br>");
                    out.println("<input type=\"checkbox\" name=\"answer\" value=\"" + option4 + "\">" + option4 + "<br>");
                    out.println("<hr>");
                }
                out.println("<input type=\"submit\" value=\"Submit Answer\">");
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
</body>
</html>
