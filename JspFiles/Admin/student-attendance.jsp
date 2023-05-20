<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/portal";
    String username = "root";
    String password = "";

    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, username, password);

        // Get the selected subject from the request parameter
        String selectedSubject = request.getParameter("subjects");
        if (selectedSubject == null) {
            selectedSubject = "Islamiat/Pakistan Study"; // Set a default subject value or handle the case
        }
        out.println("Selected Subject: " + selectedSubject);
    out.println(selectedSubject);
        // Process the attendance for each student
        java.util.Enumeration<String> parameterNames = request.getParameterNames();

        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            if (paramName.startsWith("status_")) {
                String grNo = paramName.substring(7); // Extract the GR number from the parameter name
                String status = request.getParameter(paramName);

                // Check if the attendance record already exists for the student and subject
                String checkQuery = "SELECT * FROM attendance WHERE Grno = ? AND Subject = ?";
                PreparedStatement checkStatement = connection.prepareStatement(checkQuery);
                checkStatement.setString(1, grNo);
                checkStatement.setString(2, selectedSubject);
                ResultSet resultSet = checkStatement.executeQuery();

                if (!resultSet.next()) {
                    // If the attendance record does not exist, insert a new record
                    String insertQuery = "INSERT INTO attendance (Grno, Subject, Status) VALUES (?, ?, ?)";
                    PreparedStatement insertStatement = connection.prepareStatement(insertQuery);
                    insertStatement.setString(1, grNo);
                    insertStatement.setString(2, selectedSubject);
                    insertStatement.setString(3, status);
                    insertStatement.executeUpdate();
                    insertStatement.close();
                } else {
                    // If the attendance record already exists, update the status
                    String updateQuery = "UPDATE attendance SET Status = ? WHERE Grno = ? AND Subject = ?";
                    PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
                    updateStatement.setString(1, status);
                    updateStatement.setString(2, grNo);
                    updateStatement.setString(3, selectedSubject);
                    updateStatement.executeUpdate();
                    updateStatement.close();
                }

                resultSet.close();
                checkStatement.close();
            }
        }

        connection.close();
        response.sendRedirect("admin-attendance.jsp"); // Redirect to the attendance page after successful insertion
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
