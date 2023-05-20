<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/portal";
    String username = "root";
    String password = "";

    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, username, password);
        String query = "SELECT Username, Grno FROM users";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance</title>
    <style>
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
    <h2> Add Attendance  </h2>

    <form method="post" action="./student-attendance.jsp">
    <div class="container">
    
        <div class="user-type">
            <label for="attendence">Course :</label>
    
            <select id="attendance" class="select" name="subjects">
                <option value="Islamiat/Pakistan Study">Islamiat/Pakistan Study</option>
                <option value="Technical Report Writing">Technical Report Writing</option>
                <option value="Management">Management</option>
                <option value="Networking">Networking</option>
                <option value="Web Development with Java">Web Development WITH JAVA</option>
                <option value="Project">Project</option>
            </select>
          
    </div> <br>
     <hr> 

  
  
   
   
    </div>
    <h2>Students  </h2>
    
        
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>GR Number</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% while (resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getString("Username") %></td>
                    <td><%= resultSet.getString("Grno") %></td>
                    <td>
                        <select name="status_<%= resultSet.getString("Grno") %>">
                            <option value="Present">Present</option>
                            <option value="Absent">Absent</option>
                        </select>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
<%
        resultSet.close();
        statement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
