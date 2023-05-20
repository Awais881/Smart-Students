<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.time.LocalDate" %>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/portal";
    String username = "root";
    String password = "";

    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, username, password);

        // Print the submitted form data
        String selectedSubject = request.getParameter("subjects");
        if (selectedSubject == null) {
            selectedSubject = "Islamiat/PakistanStudy"; 
        }
        java.util.Enumeration<String> parameterNames = request.getParameterNames();

        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            if (paramName.startsWith("status_")) {
                String grNo = paramName.substring("status_".length());
                String status = request.getParameter(paramName);
               // out.println("GR No: " + grNo + ", Status: " + status);

                // Create the table name based on the selected subject
                String tableName = "attendance_" + selectedSubject.toLowerCase();

                // Check if an attendance record already exists for the student and subject
                String checkQuery = "SELECT * FROM " + tableName + " WHERE Grno = ?";
                PreparedStatement checkStatement = connection.prepareStatement(checkQuery);
                checkStatement.setString(1, grNo);
                ResultSet resultSet = checkStatement.executeQuery();

                if (resultSet.next()) {
                    // Attendance record already exists, update it
                    String updateQuery = "UPDATE " + tableName + " SET Status = ? WHERE Grno = ?";
                    PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
                    updateStatement.setString(1, status);
                    updateStatement.setString(2, grNo);
                    updateStatement.executeUpdate();
                    updateStatement.close();
                } else {
                    // Attendance record does not exist, insert a new record
                    String insertQuery = "INSERT INTO " + tableName + " (Grno, Status) VALUES (?, ?)";
                    PreparedStatement insertStatement = connection.prepareStatement(insertQuery);
                    insertStatement.setString(1, grNo);
                    insertStatement.setString(2, status);
                    insertStatement.executeUpdate();
                    insertStatement.close();
                }

                resultSet.close();
                checkStatement.close();
            }
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
