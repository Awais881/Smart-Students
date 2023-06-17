<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import = "java.sql.*,util.*" %>
<%@page import="java.io.*,  java.util.Enumeration" %> 

<%
String day = request.getParameter("day");
String lectureType = request.getParameter("lecture");
String course = request.getParameter("course");
String teacher = request.getParameter("teacher");
String time = request.getParameter("time");
String roomNo = request.getParameter("room");
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("INSERT INTO class_schedule (lecture_type, day, course, teacher, time, room_no) VALUES (?, ?, ?, ?, ?, ?)");
    ps.setString(1, lectureType);
    ps.setString(2, day);
    ps.setString(3, course);
    ps.setString(4, teacher);
    ps.setString(5, time);
    ps.setString(6, roomNo);

    int result = ps.executeUpdate();
    if (result > 0) {
      // Class schedule added successfully
      response.sendRedirect("classScheduleSuccess.jsp");
    } else {
      // Error adding class schedule
      response.sendRedirect("classScheduleError.jsp");
    }
  } catch (Exception e) {
    e.printStackTrace();
    // Error handling
  }
%>
