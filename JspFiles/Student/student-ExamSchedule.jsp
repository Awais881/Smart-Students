<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
  String exam_type = request.getParameter("exam_type");

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("SELECT * FROM exam_schedule WHERE exam_type = ?");
    ps.setString(1, exam_type);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
%>
        <table>
            <tr>
                <th>Course</th>
                <th>Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                
            </tr>
<%
        do {
%>
            <tr>
                <td><%= rs.getString("course") %></td>
                <td><%= rs.getString("date") %></td>
                <td><%= rs.getString("start_time") %></td>
                <td><%= rs.getString("end_time") %></td>
              
            </tr>
<%
        } while (rs.next());
%>
        </table>
<%
    } else {
%>
        <p class="no-data">No schedule available for <%= exam_type %>.</p>
<%
    }

    rs.close();
    ps.close();
    con.close();
  } catch (Exception e) {
    e.printStackTrace();
    // Error handling
  }
%>
