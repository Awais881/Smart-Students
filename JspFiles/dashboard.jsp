<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../cssFiles/welcome.css">
    <title>Document</title>
    <style>
          
    
       .logo{
        width: 80px;
    }
    *{
        margin: 0px;
        padding: 0px;
    }
    h4{
        color: white;
    }
    nav{
        margin: 0px;
        display: flex;
        justify-content: space-around;
        background-color: #B6B6B6;
        height: 150px;
    
    }
    
    h2{
    
        margin-top: 25px;
        font-weight: bolder;
    }
    .profile{
        border-radius: 50%;
        width: 60px;
        position: absolute;
        top: 10px;
        right: 20px;
      
        
    }

    .nav-ul{
        
        display: flex;
        gap: 10px;
        justify-content:flex-end;
        list-style: none;
        font-weight: bolder;
      
    }
    
    li> button{
        float: right;
        border-radius: 10px 5px 0px 5px;
        padding: 10px;
        width:100px;
        font-size: 10px;
        font-weight: bold;
        color: white;
        background-color:#007bff;
        border: none;
    }
    
    .header{
        border-radius: 10px 5px 0px 5px;
         width: 90%;
         margin-left: 90px;
        background-color: #007bff;
    }

    .navbar{
       
       position: sticky;
       overflow: hidden;
       
       
    }
    .name{
        color: white;
        font-weight: bold;
        padding: 10px;
        margin-top: -40px;
        font-size: 20px;
        position: relative;
        top: 30px;
    }
 
    
    li:hover{
        cursor: pointer;
    }
    button:hover{
        cursor: pointer;
    }
    .nav-ul a{
        color: white;
        text-decoration: none;
       
    }
    
    iframe{
        width: 70%;
        position: absolute;
        top: 190px;
        left: 350px;
        height: 100vh;
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
  margin-top: 5px;
  border-radius: 15px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  overflow-y: hidden;
  height: 100vh;
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


    </style>
</head>
<body>
  <%
  // Cookie cookieobject[]=request.getCookies();
  String pictname = "../UserImages/"+(String)session.getAttribute("upicture");            //"../UserImages/"+cookieobject[3].getValue();
%> 
    <nav>
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
        </div>
    </header> 
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
    <iframe src="./information.jsp" frameborder="1"   name="content">

    </iframe>
</center> 

</body>
</html>