<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
  String day = request.getParameter("day");

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("SELECT * FROM class_schedule WHERE day = ?");
    ps.setString(1, day);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
%>
        <table>
            <tr>
                <th>Day</th>
                <th>Lecture Type</th>
                <th>Course</th>
                <th>Teacher</th>
                <th>Time</th>
                <th>Room No</th>
            </tr>
<%
        do {
%>
            <tr>
                <td><%= rs.getString("day") %></td>
                <td><%= rs.getString("lecture_type") %></td>
                <td><%= rs.getString("course") %></td>
                <td><%= rs.getString("teacher") %></td>
                <td><%= rs.getString("time") %></td>
                <td><%= rs.getString("room_no") %></td>
            </tr>
<%
        } while (rs.next());
%>
        </table>
<%
    } else {
%>
        <p class="no-data">No schedule available for <%= day %>.</p>
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
