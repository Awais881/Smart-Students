<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*, util.*" %>
<%@ page import="java.io.*, java.util.Enumeration" %>

<html>
<body>

<%
  String Name, Email, Message;
  Name = request.getParameter("name");
  Email = request.getParameter("email");
  Message = request.getParameter("message");

  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
  String currentDate = formatter.format(new Date()); // Get the current date in the desired format

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("INSERT INTO feedbacks (Date, Name, Email, Message ) VALUES (?, ?, ?, ?);");
    ps.setString(1, currentDate);
    ps.setString(2, Name);
    ps.setString(3, Email);
    ps.setString(4, Message); // Set the current date in the prepared statement

    int x = ps.executeUpdate();
    response.sendRedirect("feedbackSuccess.jsp");
  } catch (Exception e) {
    out.print("<script> window.open('signupError.jsp','_blank'); </script>");
    // out.println("<h2 style='color:red'>MySQL Database Not Connected Error: "+e+"</h1>");
  }
%>

</body>
</html>
