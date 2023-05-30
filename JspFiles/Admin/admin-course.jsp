<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <h3>Assign Quiz or Assignment</h3>
    <form action="./adding-course.jsp" method="post">
        <input type="hidden" name="action" value="assign">

        <h4>Quizzes</h4>
        <% 
            try {
                // Establish a database connection
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/portal";
                String username = "root";
                String password = "";

                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url, username, password);

                // Retrieve the list of quizzes from the database
                String selectQuizzesQuery = "SELECT * FROM quizzes";
                PreparedStatement selectQuizzesStatement = connection.prepareStatement(selectQuizzesQuery);
                ResultSet quizzesResultSet = selectQuizzesStatement.executeQuery();

                while (quizzesResultSet.next()) {
                    int quizId = quizzesResultSet.getInt("quiz_id");
                    String quizTitle = quizzesResultSet.getString("title");

                    // Display the quiz title and assign checkbox for each quiz
                    out.println("<label>");
                    out.println("<input type=\"checkbox\" name=\"assignmentIds\" value=\"" + quizId + "\">");
                    out.println(quizTitle);
                    out.println("</label><br>");
                }

                quizzesResultSet.close();
                selectQuizzesStatement.close();

                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

        <h4>Assignments</h4>
        <% 
            try {
                // Establish a database connection
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/portal";
                String username = "root";
                String password = "";

                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url, username, password);

                // Retrieve the list of assignments from the database
                String selectAssignmentsQuery = "SELECT * FROM assignments";
                PreparedStatement selectAssignmentsStatement = connection.prepareStatement(selectAssignmentsQuery);
                ResultSet assignmentsResultSet = selectAssignmentsStatement.executeQuery();

                while (assignmentsResultSet.next()) {
                    int assignmentId = assignmentsResultSet.getInt("assignment_id");
                    String assignmentTitle = assignmentsResultSet.getString("title");

                    // Display the assignment title and assign checkbox for each assignment
                    out.println("<label>");
                    out.println("<input type=\"checkbox\" name=\"assignmentIds\" value=\"" + assignmentId + "\">");
                    out.println(assignmentTitle);
                    out.println("</label><br>");
                }

                assignmentsResultSet.close();
                selectAssignmentsStatement.close();

                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

        <input type="submit" value="Assign">
    </form>
</body>
</html>
