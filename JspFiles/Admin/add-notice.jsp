<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import = "java.sql.*,util.*" %>
<%@page import="java.io.*,  java.util.Enumeration" %> 

<%
String date = request.getParameter("date");
String title = request.getParameter("title");
String content = request.getParameter("content");

if (date != null && title != null && content != null) {
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","");
    
    // Prepare the SQL statement to insert the notice data
    String sql = "INSERT INTO notices (date, title, content) VALUES (?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, date);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    
    // Execute the SQL statement to insert the notice data
    int rowsAffected = pstmt.executeUpdate();
    
    if (rowsAffected > 0) {
      out.println("<h3>Notice Added Successfully!</h3>");
    } else {
      out.println("<h3>Failed to Add Notice</h3>");
    }
    
    // Close the prepared statement and database connection
    pstmt.close();
    con.close();
  } catch (Exception e) {
    out.println("<h3>Error: " + e.getMessage() + "</h3>");
  }
}
%>