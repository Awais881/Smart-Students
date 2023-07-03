<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz List</title>
</head>
<body>
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

                out.println("<h2>" + quizTitle + "</h2>");
                out.println("<p>" + quizDescription + "</p>");
                out.println("<form method=\"get\" action=\"quizAttempt.jsp\">");
                out.println("<input type=\"hidden\" name=\"quizId\" value=\"" + quizId + "\">");
                out.println("<input type=\"submit\" value=\"Start Quiz\">");
                out.println("</form>");
                out.println("<hr>");
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
