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

        // Get the selected subject from the request parameter
        String selectedSubject = request.getParameter("subjects");
        out.println(selectedSubject);
        if (selectedSubject == null) {
            selectedSubject = "Islamiat"; 
        }
        
        // Get the current date
        LocalDate currentDate = LocalDate.now();
        String formattedDate = currentDate.toString();

        java.util.Enumeration<String> parameterNames = request.getParameterNames();

        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            if (paramName.startsWith("status_")) {
                String grNo = paramName.substring("status_".length());
                String status = request.getParameter(paramName);

                // Create the table name based on the selected subject
                String tableName = "attendance_" + selectedSubject.toLowerCase();

                // Check if an attendance record already exists for the student, subject, and date
                String checkQuery = "SELECT * FROM " + tableName + " WHERE Grno = ? AND Date = ?";
                PreparedStatement checkStatement = connection.prepareStatement(checkQuery);
                checkStatement.setString(1, grNo);
                checkStatement.setString(2, formattedDate);
                ResultSet resultSet = checkStatement.executeQuery();

                if (resultSet.next()) {
                    // Attendance record already exists, update it
                    String updateQuery = "UPDATE " + tableName + " SET Status = ? WHERE Grno = ? AND Date = ?";
                    PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
                    updateStatement.setString(1, status);
                    updateStatement.setString(2, grNo);
                    updateStatement.setString(3, formattedDate);
                    updateStatement.executeUpdate();
                    updateStatement.close();
                } else {
                    // Attendance record does not exist, insert a new record
                    String insertQuery = "INSERT INTO " + tableName + " (Grno, Date, Status) VALUES (?, ?, ?)";
                    PreparedStatement insertStatement = connection.prepareStatement(insertQuery);
                    insertStatement.setString(1, grNo);
                    insertStatement.setString(2, formattedDate);
                    insertStatement.setString(3, status);
                    insertStatement.executeUpdate();
                    insertStatement.close();
                }

                resultSet.close();
                checkStatement.close();
            }
        }

        connection.close();
        response.sendRedirect("attendance-success.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
