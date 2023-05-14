<%@page import = "java.sql.*,java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>DashBoard</title>

</head>

<body>





    
            <%
           
          
            String grNo= null, name="";
            String  uid = request.getParameter("Grno");
            String  pas = request.getParameter("password");


            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","");

            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE Grno = ? AND password = ? ");
            pst.setString(1,uid);
            pst.setString(2,pas);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next())

           {
            session.setAttribute("uid", rs.getString("Grno")); 
			session.setAttribute("userName", rs.getString("Username")); 
			session.setAttribute("userType", rs.getString("Usertype")); 
            session.setAttribute("upicture",rs.getString("userPicture")); 
            session.setAttribute("email", rs.getString("Email")); 
            session.setAttribute("gender", rs.getString("Gender")); 
            if (rs.getString("UserType").equals("student") )
            {
                response.sendRedirect("Student/dashboard.jsp");

            }
            else if (rs.getString("UserType").equals("admin") )  {
                response.sendRedirect("admin-dashboard.jsp");
            }
            }
            else
            response.sendRedirect("notFound.jsp");
            }
            catch(Exception e)
            {
            out.println("<h3 style='çolor:red'> Error: "+e+"<h3>");
            }
            %>
   




</body>
</html>
