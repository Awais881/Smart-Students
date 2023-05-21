<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.time.LocalDate" %>

<html>
<head>
    <title>Student Attendance</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
       
            margin: 0;
            padding: 20px;
        }

      

        h2{
          background-color: #00c78e;
    padding: 10px;
    color: white;
}

.select {
  width: 100;
  border: 1px solid black;
  border-radius: 0.25em;
  padding: 0.25em 0.5em;
  font-size: 1.25rem;
  cursor: pointer;
  line-height: 1.1;
  background-color: #fff;
  background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
  margin-left: 150px;
  
}
.subjects{
    color: black;
    font-size: large;
    margin-right: 160px;
   
}
  .flex{
    display: flex;
    gap: 50px;
  }
  button{
    font-size: 15px;
    padding: 10px;
    border-radius: 4px;
   margin-left: 200px;
   margin-top: 20px;
 
    width: 110px;
    height: 45px;
    background-color: #868E96;
    border: none;
    color: white;
    font-weight: bolder;
    cursor: pointer;
  }
  table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
    </style>
</head>
<body>
    <div class="container">
        <h2> Student Attendance  </h2>
         <span><a href="./attendence.jsp">Back</a></span>
              
        </div> <br>
         <hr> <br>
    
        <table>
            <tr>
                <th>Date</th>
                <th>Status</th>
            </tr>
           
            <h2></h2>
            <% 
                try {
                    String driver = "com.mysql.jdbc.Driver";
                    String url = "jdbc:mysql://localhost:3306/portal";
                    String username = "root";
                    String password = "";
                    Class.forName(driver);
                    Connection connection = DriverManager.getConnection(url, username, password);

                    String grNo =   (String) session.getAttribute("uid"); // Get the student's Grno, you can use session or request parameter to retrieve it

                    // Get the selected subject from the request parameter
                    String selectedSubject = request.getParameter("subjects");
                    if (selectedSubject == null) {
                        selectedSubject = "Islamiat"; 
                    }
                    
                    out.println("<h1>"+selectedSubject +"</h1>"); 
                    // Create the table name based on the selected subject
                    String tableName = "attendance_" + selectedSubject.toLowerCase();

                    // Get the attendance records for the student from the database
                    String query = "SELECT Date, Status FROM " + tableName + " WHERE Grno = ?";
                    PreparedStatement statement = connection.prepareStatement(query);
                    statement.setString(1, grNo);
                    ResultSet rs = statement.executeQuery();

                    while (rs.next()) {
                        String date = rs.getString("Date");
                        String status = rs.getString("Status");

                        out.println("<tr>");
                        out.println("<td>" + date + "</td>");
                        out.println("<td>" + status + "</td>");
                        out.println("</tr>");
                    }

                    rs.close();
                    statement.close();
                    connection.close();
                } catch (Exception e) {
                    out.println("An error occurred: " + e.getMessage());
                }
            %>
        </table>
    </div>
</body>
</html>
