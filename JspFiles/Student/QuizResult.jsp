<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
</head>
<body>
    <%
        String url = "jdbc:mysql://localhost:3306/portal";
        String username = "root";
        String password = "";

        int quizId = Integer.parseInt(request.getParameter("quizId"));
        String selectedAnswer = request.getParameter("answer");
        
       

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);

            // Retrieve quiz questions
            String questionQuery = "SELECT * FROM quiz_questions WHERE quiz_id = ?";
            stmt = conn.prepareStatement(questionQuery);
            stmt.setInt(1, quizId);
            rs = stmt.executeQuery();

            // Loop through the questions and save the results
            while (rs.next()) {
                int questionNumber = rs.getInt("question_id");
                String correctAnswer = rs.getString("correct_answer");

                // Store the quiz result in the database
                String resultQuery = "INSERT INTO quiz_results (quiz_id, question_number, selected_answer, correct_answer) VALUES (?, ?, ?, ?)";
                stmt = conn.prepareStatement(resultQuery);
                stmt.setInt(1, quizId);
                stmt.setInt(2, questionNumber);
                stmt.setString(3, selectedAnswer);
                stmt.setString(4, correctAnswer);
                stmt.executeUpdate();
            }
           
            response.sendRedirect("quizSuccess.jsp");

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
