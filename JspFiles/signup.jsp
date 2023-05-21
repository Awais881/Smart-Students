<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import = "java.sql.*,util.*" %>
<%@page import="java.io.*,  java.util.Enumeration" %> 

<html>
<body>

<%

 String Username, Email,  Gender, Usertype,password,Grno,userpict;
 
  Grno=request.getParameter("Grno"); 
  Username=request.getParameter("userName"); 
  Email=request.getParameter("email"); 
  password=request.getParameter("password"); 
  userpict = request.getParameter("userpict");

  Gender=request.getParameter("gender"); 
  Usertype= "student";
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
 java.util.Date util_Dateofbirth = formatter.parse( request.getParameter("date") );
  java.sql.Date Dateofbirth = new java.sql.Date( util_Dateofbirth.getTime() );
  
 try
 {
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","");
 PreparedStatement ps = con.prepareStatement("insert into users(Grno,Username, Email, Dateofbirth, Gender, Usertype, password, userPicture) values ( ?,?,?,?,?,?,?,? ); ");
 ps.setString(1,Grno);
 ps.setString(2,Username);
 ps.setString(3,Email);
 ps.setDate(4,Dateofbirth);
 ps.setString(5,Gender);
 ps.setString(6,Usertype);
 ps.setString(7,password);
 ps.setString(8,userpict);


 int x = ps.executeUpdate();
 response.sendRedirect("signupSuccess.jsp");
              

 }
 catch(Exception e)
 {
     out.print("<script> window.open('signupError.jsp','_blank'); </script>");  
   // out.println("<h2 style='color:red'>MySQL Database Not Connected Error: "+e+"</h1>");
 }

%>
</body>
</html>