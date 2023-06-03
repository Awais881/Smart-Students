<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
  String examType = request.getParameter("examType");
  String course = request.getParameter("course");
  String date = request.getParameter("date");
  String startTime = request.getParameter("startTime");
  String endTime = request.getParameter("endTime");

  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("INSERT INTO exam_schedule (exam_type, course, date, start_time, end_time) VALUES (?, ?, ?, ?, ?)");
    ps.setString(1, examType);
    ps.setString(2, course);
    ps.setString(3, date);
    ps.setString(4, startTime);
    ps.setString(5, endTime);

    int result = ps.executeUpdate();
    if (result > 0) {
      // Exam schedule added successfully
      response.sendRedirect("examScheduleConfirmation.jsp");
    } else {
      // Error adding exam schedule
      response.sendRedirect("examScheduleError.jsp");
    }
  } catch (Exception e) {
    e.printStackTrace();
    // Error handling
  }
%>
