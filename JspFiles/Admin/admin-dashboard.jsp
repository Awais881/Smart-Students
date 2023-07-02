<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Check if the user session exists
    if (session.getAttribute("uid") == null) {
        // Redirect to the login page
        response.sendRedirect("../../htmlfiles/login.html");
        return; // Stop further execution of the dashboard page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../cssFiles/welcome.css">
    <link rel="shortcut icon" type="image/x-icon" href="../../img/favicon.jpg" />
    <title>Dashboard</title>
    <style>
          
    
      
    
    iframe{
        width: 70%;
        background-color: #fff;
        border-radius: 15px;
      
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        position: absolute;
        top: 80px;
        left: 350px;
        border: none;
       height: 750px;
       /* height: 100vh; */
    }
    .err{
        display: flex;
        justify-content: center;
        align-items: center;
    }
      .leftBar { 
       
   background-color: #fff;
   height: 750px;
  width: 25%;
  margin-left: 5px;
  margin-top: 80px;
  border-radius: 15px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  overflow-y: hidden;
  /* height: 100vh; */
}




.leftBar .h4 {
  /* background-color: #007bff; */

  /* text-align: center; */
  /* font-size: 18px; */
  margin-left: 100px;
  padding: 15px 0;
  border-radius: 50%;
        width: 70px;
}

.leftBar ul {
 
  list-style: none;
  margin: 0;
  padding: 0;
}

.leftBar li {

  padding: 10px 35px;
  border-bottom: 1px solid #f5f5f5;
  transition: background-color 0.2s ease-in-out;
}

.leftBar li:last-child {
  border-bottom: none;
}

.leftBar li a {
  color: #333;
  text-decoration: none;
  font-size: 16px;
  display: block;
  transition: color 0.2s ease-in-out;
}
.leftBar li:active {
  background-color: #00c78e;
  border-radius: 5px;
  margin-left: 20px;
    transition: 0.5s;
}
.active{
  background-color: #00c78e;
  border-radius: 5px;
  width: 100%;
  padding: 15px;
  height: 50px;
    
}
 .leftBar li a:hover {
  color: #007bff;
 
} 
/* .leftBar li:hover{
  background-color: #00c78e;
  border-radius: 5px;
  margin-left: 20px;
    transition: 0.5s;
} */



.leftBar span{
  margin-left: 110px;
  color: #007bff;
  cursor: pointer;
}
.leftBar span:hover{
      color: darkgray;
}
@media (max-width: 767px) {
  .leftBar {
    width: 100%;
    margin: 0;
    border-radius: 0;
  }
}  


header {
  
  background-color: #fff;
  box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 9999;
  height: 70px;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 100%;
}

.logo img {

  /* font-size: 1.3rem; */
  /* font-weight: bold;
  text-decoration: none;
  color: #3334 */
 width: 80px;
   height: 75px;
  margin-left: 20px;

}

nav {
  display: flex;
}

.menu {
  list-style-type: none;
  display: flex;
  align-items: center;
  margin: 0;
  padding: 0;
}

.menu li {
  margin: 0 15px;
}

.menu li a {
  color: #333;
  text-decoration: none;
  font-size: 0.9rem;
  font-weight: bold;
  padding: 10px;
  transition: all 0.2s ease-in-out;
}

.menu li a:hover {
  background-color: #f5f5f5;
  color: #333;
}

@media screen and (max-width: 768px) {
  .menu {
    display: none;
    position: absolute;
    top: 70px;
    left: 0;
    width: 100%;
    background-color: #fff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    padding: 10px;
    text-align: center;
  }

  .menu li {
    display: block;
    margin: 10px 0;
  }

  .container {
    flex-direction: column;
    align-items: center;
    height: auto;
  }

  .logo {
    margin-bottom: 20px;
  }
  
  .menu.active {
    display: flex;
    flex-direction: column;
  }
}

.menu-icon {
  display: none;
  cursor: pointer;
}

@media screen and (max-width: 768px) {
  .menu {
    display: none;
    position: absolute;
    top: 70px;
    left: 0;
    width: 100%;
    background-color: #fff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    padding: 10px;
    text-align: center;
  }

  .menu li {
    display: block;
    margin: 10px 0;
  }

  .container {
    flex-direction: column;
    align-items: center;
    height: auto;
  }

  .logo {
    margin-bottom: 20px;
  }

  .menu-icon {
    display: block;
  }
  
  .menu.active {
    display: flex;
    flex-direction: column;
  }
}

    </style>
</head>
<body>
  <%
  // Cookie cookieobject[]=request.getCookies();
  String pictname = "../../UserImages/"+(String)session.getAttribute("upicture");       
%> 
 
        
        <header>
          <div class="container">
            <a href="#" class="logo"><img src="../../img/edu (2).png" alt="">
            </a>
            <nav>
              <ul class="menu">
                <li><a href="./admin-information.jsp" target="content">Dashboard</a></li>
                <li><a href="./admin-attendance.jsp" target="content">Attendence</a></li>
                <!-- <li><a href="./admin-course.jsp" target="content"> Course</a></li> -->
                <li><a  href="./admin-class.jsp" target="content">  Class</a></li>
              <li><a href="./admin-examSchedule.jsp" target="content">ExamSchedule</a></li>
                <li><a href="./admin-notice.jsp" target="content">Notice</a></li>
                <li><a  href="../logout.jsp" >Logout</a></li>
                
              </ul>
            </nav>
          </div>
        </header>
        
        
    <!-- </header>  -->

     <div class="leftBar">
    
        <div><img src="<%= pictname %>" alt="Profile" class="h4"></div>
        <span><%=  (String) session.getAttribute("userType")  %></span>
        <ul>
          <li><a  class="clickable-anchor" href="./add-admins.jsp" target="content">Create Role </a></li>
          <li><a  class="clickable-anchor" href="./showFeedbacks.jsp" target="content">Feedbacks</a></li>
          <li><a  class="clickable-anchor" href="./admin-notice.jsp" target="content">Event</a></li>
          <li><a  class="clickable-anchor" href="./admin-studyMaterial.jsp" target="content">Study Material</a></li>
          <li><a  class="clickable-anchor" href="./admin-holiday.jsp"  target="content">Academic</a></li>
          <li><a  class="clickable-anchor" href="./admin-holiday.jsp"  target="content">Holiday</a></li>
         
         
        </ul>
      </div> 
    
  


 <center>
    <iframe src="./admin-information.jsp"    name="content">

    </iframe>
</center> 
<script>
var anchors = document.getElementsByClassName("clickable-anchor");

for (var i = 0; i < anchors.length; i++) {
  anchors[i].addEventListener("click", function() {
    // Remove "active" class from all anchors
    for (var j = 0; j < anchors.length; j++) {
      anchors[j].classList.remove("active");
    }
    
    // Add "active" class to the clicked anchor
    this.classList.add("active");
  });
}



</script>
</body>
</html>