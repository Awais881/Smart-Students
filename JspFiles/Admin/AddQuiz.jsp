<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Quiz</title>
</head>
<body>
    <%
        String url = "jdbc:mysql://localhost:3306/portal";
        String username = "root";
        String password = "";
        
        String quizTitle = request.getParameter("title");
        String quizDescription = request.getParameter("description");
        
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
            
            // Insert quiz data
            String quizQuery = "INSERT INTO quizzes (title, description) VALUES (?, ?)";
            stmt = conn.prepareStatement(quizQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, quizTitle);
            stmt.setString(2, quizDescription);
            stmt.executeUpdate();
            
            // Get the generated quiz ID
            ResultSet generatedKeys = stmt.getGeneratedKeys();
            int quizId = 0;
            if (generatedKeys.next()) {
                quizId = generatedKeys.getInt(1);
            }
            
            // Insert question data
            int questionCount = Integer.parseInt(request.getParameter("questionCount"));
            for (int i = 1; i <= questionCount; i++) {
                String questionText = request.getParameter("question" + i);
                String option1 = request.getParameter("option1_" + i);
                String option2 = request.getParameter("option2_" + i);
                String option3 = request.getParameter("option3_" + i);
                String option4 = request.getParameter("option4_" + i);
                String answer = request.getParameter("answer_" + i);


                
                String questionQuery = "INSERT INTO quiz_questions (quiz_id, question_text, option1, option2, option3, option4, correct_answer) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(questionQuery);
                stmt.setInt(1, quizId);
                stmt.setString(2, questionText);
                stmt.setString(3, option1);
                stmt.setString(4, option2);
                stmt.setString(5, option3);
                stmt.setString(6, option4);
                stmt.setString(7, answer);
                stmt.executeUpdate();
            }
            
            response.sendRedirect("quizSuccess.jsp");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
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
