<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
  // Retrieve form data
  String title = request.getParameter("title");
  String description = request.getParameter("description");

  // Database connection details
  String jdbcUrl = "jdbc:mysql://localhost:3306/portal";
  String dbUsername = "root";
  String dbPassword = "";

  // File upload settings
  String uploadDirectory = "c:/xampp/tomcat/webapps/Smart-Students/StudyMaterial/"; // Specify the directory where the files will be stored
  int maxFileSize = 10 * 1024 * 1024; // Maximum file size (10MB)
  int maxRequestSize = 50 * 1024 * 1024; // Maximum request size (50MB)

  // Create a factory for disk-based file items
  DiskFileItemFactory factory = new DiskFileItemFactory();
  factory.setSizeThreshold(maxFileSize);
  factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

  // Create a new file upload handler
  ServletFileUpload fileUpload = new ServletFileUpload(factory);
  fileUpload.setSizeMax(maxRequestSize);

  try {
    // Establish a connection to the database
    Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

    // Parse the request to extract file and form data
    List<FileItem> formItems = fileUpload.parseRequest(request);
    if (formItems != null && !formItems.isEmpty()) {
      for (FileItem item : formItems) {
        if (!item.isFormField()) {
          // Process the uploaded file
          String fileName = new File(item.getName()).getName();
          String filePath = uploadDirectory + File.separator + fileName;
          File storeFile = new File(filePath);
          item.write(storeFile);

          // Insert study material details into the database
          String sql = "INSERT INTO study_materials (title, description, file_path) VALUES (?, ?, ?)";
          PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
          statement.setString(1, title);
          statement.setString(2, description);
          statement.setString(3, filePath);
          statement.executeUpdate();

          // Get the generated ID of the inserted record
          ResultSet generatedKeys = statement.getGeneratedKeys();
          int materialId = -1;
          if (generatedKeys.next()) {
            materialId = generatedKeys.getInt(1);
          }

          statement.close();

          out.println("Study material added successfully with ID: " + materialId);
        }
      }
    }

    // Close the database connection
    connection.close();
  } catch (Exception e) {
    out.println("Error: " + e.getMessage());
  }
%>
