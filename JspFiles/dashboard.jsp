<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../cssFiles/welcome.css">
    <title>Document</title>
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
       height: 705px;
       /* height: 100vh; */
    }
    .err{
        display: flex;
        justify-content: center;
        align-items: center;
    }
      .leftBar { 
       
   background-color: #fff;
  
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

 .leftBar li a:hover {
  color: #007bff;
 
} 
.leftBar li:hover{
  background-color: #c9c49b;
  border-radius: 5px;
  margin-left: 20px;
    transition: 0.5s;
}
.leftBar li.active {
  background-color: #007bff;
}

.leftBar li.active a {
  color: #fff;
}
.leftBar span{
  margin-left: 70px;
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
  String pictname = "../UserImages/"+(String)session.getAttribute("upicture");            //"../UserImages/"+cookieobject[3].getValue();
%> 
    <!-- <nav>
        <div><img src="../img/aligarh.png" alt="logo" class="logo"></div>
     <div>  <center><h2>ALIGARH INSTITUTE OF TECHNOLOGY, KARACHI <br> Student Portal
            </h2>
        </center>
    </div> 
    
   <div class="head-sec"> 
    
    <img src="../img/profile.jfif" alt="profile" class="profile">
   </div>
    </nav>
     <header class="header">
        <p class="name"> 
    
  
      <center>
        <div class="navbar">
            <ul class="nav-ul">
                <li><button>  <a href="./information.jsp" target="content"> Dashboard</a></button></li>
                <li><button> <a href="../htmlfiles/attendence.html" target="content"> Attendence</a></button></li>
                <li><button>  <a href="../htmlfiles/mycourse.html" target="content"> My Course</a></button></li>
                <li><button>  <a href="../htmlfiles/class.html" target="content"> Class Schedule</a></button></li>
                <li><button>  <a href="../htmlfiles/feeChallan.html" target="content"> Fee Challan</a></button></li>

                <li><button>  Exam Schedule  </button></li>
                <li><button>  Study Material</button></li>
                <li><button> Email</button></li>
                <li><button> Notification</button></li>
            </ul>
    
        </center>
        </div> -->
        <header>
          <div class="container">
            <a href="#" class="logo"><img src="../img/edu.png" alt="">
            </a>
            <nav>
              <ul class="menu">
                <li><a href="./information.jsp" target="content">Dashboard</a></li>
                <li><a href="./attendence.jsp" target="content">Attendence</a></li>
                <li><a href="../htmlfiles/mycourse.html" target="content"> Course</a></li>
                <li><a  href="../htmlfiles/class.html" target="content">ClassSchedule</a></li>
                <li><a href="../htmlfiles/feeChallan.html" target="content">FeeChallan</a></li>
                <li><a href="../htmlfiles/attendence.html" target="content">ExamSchedule</a></li>
                <li><a href="../htmlfiles/mycourse.html" target="content">StudyMaterial</a></li>
                <li><a  href="../htmlfiles/class.html" target="content">Email</a></li>
                <li><a href="../htmlfiles/feeChallan.html" target="content">Updates</a></li>
              </ul>
            </nav>
          </div>
        </header>
        
        
    <!-- </header>  -->

     <div class="leftBar">
        <!-- <h4>Other Pages</h4> -->
        <div><img src="<%=pictname %>'" alt="Profile" class="h4"></div>
        <span><%=  (String) session.getAttribute("userName")  %></span>
        <ul>
          <li><a href="#">E-Library</a></li>
          <li><a href="#">Calendar</a></li>
          <li><a href="#">Academic</a></li>
          <li><a href="#">Event</a></li>
          <li><a href="#">Holiday</a></li>
          <li><a href="#">Notice Board</a></li>
          <li><a href="#">Student Services</a></li>
          <li><a href="#">Grading Criteria</a></li>
          <li><a href="#">Course Curriculum</a></li>
        </ul>
      </div> 
    
  


 <center>
    <iframe src="./information.jsp"    name="content">

    </iframe>
</center> 

</body>
</html>