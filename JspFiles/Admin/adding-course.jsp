<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    // Database connection details
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/portal";
    String username = "root";
    String password = "";

    try {
        // Establish a database connection
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, username, password);

        // Handle assigning quiz/assignment
        String action = request.getParameter("action");

        if (action.equals("assign")) {
            String[] assignmentIds = request.getParameterValues("assignmentIds");
            
            if (assignmentIds != null && assignmentIds.length > 0) {
                for (String assignmentId : assignmentIds) {
                    // Check if the assignment is already assigned to all students
                    String checkAssignmentQuery = "SELECT * FROM student_assignments WHERE assignment_id = ?";
                    PreparedStatement checkAssignmentStatement = connection.prepareStatement(checkAssignmentQuery);
                    checkAssignmentStatement.setString(1, assignmentId);
                    ResultSet assignmentResultSet = checkAssignmentStatement.executeQuery();

                    if (!assignmentResultSet.next()) {
                        // Assignment is not assigned to all students, assign it
                        String assignAssignmentQuery = "INSERT INTO student_assignments (student_id, assignment_id) SELECT Grno, ? FROM students";
                        PreparedStatement assignAssignmentStatement = connection.prepareStatement(assignAssignmentQuery);
                        assignAssignmentStatement.setString(1, assignmentId);
                        assignAssignmentStatement.executeUpdate();
                        assignAssignmentStatement.close();
                    }

                    assignmentResultSet.close();
                    checkAssignmentStatement.close();
                }
            }
        }

        connection.close();
        response.sendRedirect("assignment-success.jsp"); // Redirect to success page after successful assignment
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
