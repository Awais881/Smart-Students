<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
String dateStr = request.getParameter("date");
String startTimeStr = request.getParameter("startTime");
String endTimeStr = request.getParameter("endTime");

// Format the date and time strings
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
Date date = dateFormat.parse(dateStr);
Date startTime = timeFormat.parse(startTimeStr);
Date endTime = timeFormat.parse(endTimeStr);
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "");
    PreparedStatement ps = con.prepareStatement("INSERT INTO class_schedule (lecture_type, day, course, teacher, time, room_no) VALUES (?, ?, ?, ?, ?, ?)");
    ps.setString(1, examType);
    ps.setString(2, course);
    ps.setDate(3, new java.sql.Date(date.getTime()));
    ps.setTime(4, new java.sql.Time(startTime.getTime()));
    ps.setTime(5, new java.sql.Time(endTime.getTime()));

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
