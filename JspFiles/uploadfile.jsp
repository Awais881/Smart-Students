<%@ page import="java.io.*, java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
    File file;
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    String id, userpict, fieldName = "", fileName = "";

    id = (String) session.getAttribute("uid");
    out.println("<h2>User ID First: " + id + "</h2>");

    String filePath = "c:/xampp/tomcat/webapps/SmartCampus/UserImages/";

    String contentType = request.getContentType();
    out.print("<h2>" + contentType + "<h2>");

    if (contentType != null && contentType.indexOf("multipart/form-data") >= 0) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(maxMemSize);
        factory.setRepository(new File("c:\\temp"));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(maxFileSize);
        try {
            List fileItems = upload.parseRequest(request);
            Iterator i = fileItems.iterator();
            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    fieldName = fi.getFieldName();
                    fileName = fi.getName();
                    userpict = fileName;
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();
                    file = new File(filePath + fileName);
                    fi.write(file);
                    out.print("<h2>" + fieldName + "<h2>");
                    out.print("<h2>" + fileName + "<h2>");
                    out.println("<h1>Uploaded Filename: " + filePath + fileName + "</h1>");
                }
            }
        } catch (Exception ex) {
            out.println("ex");
        }
    }

    try {
        userpict = fileName;

        Class.forName("com.mysql.jdbc.Driver"); // Change to your database driver
        String url = "jdbc:mysql://localhost:3306/portal"; // Change to your database URL
        String username = "root"; // Change to your database username
        String password = ""; // Change to your database password

        Connection con = DriverManager.getConnection(url, username, password);

        PreparedStatement pst = con.prepareStatement("UPDATE users SET userPicture = ? WHERE Grno = ?");
        pst.setString(1, userpict);
        pst.setString(2, id);

        int rowsAffected = pst.executeUpdate();

        if (rowsAffected > 0) {
            session.setAttribute("upicture", userpict);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT UserType FROM users WHERE Grno = '" + id + "'");

            if (rs.next()) {
                String userType = rs.getString("UserType");
                if (userType.equals("student")) {
                 response.sendRedirect("Student/information.jsp");
             
              } else {
                  response.sendRedirect("Admin/admin-information.jsp");
              }
          }

          rs.close();
          stmt.close();
      }

      con.close();
  } catch (Exception e) {
      out.println("<h2 style='color:red'>MySQL Database Not Connected Error: " + e + "</h1>");
  }
%>
