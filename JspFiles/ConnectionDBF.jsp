<%@page import = "java.sql.*,java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","");

%>