<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table {
          border: 10px solid #dddddd;
         border-radius: 15px;
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
 
}

td {
  border: 10px solid #dddd;
  text-align: left;
  padding: 8px;

 
}

tr:nth-child(even) {
background-color: whitesmoke;

}

h2{
  background-color: #00c78e;
    padding: 10px;
    color: white;
}
.td-left{
  padding: 15px;
}
.profile-pic{
width: 15%;
text-align: center;
}
.profile-pic img {
  width: 200px;
  height: 200px;
margin-top: -100px;

}
.button-68 {
  
  appearance: none;
  backface-visibility: hidden;
  background-color: #27ae60;
  border-radius: 8px;
  border-style: none;
  box-shadow: rgba(39, 174, 96, .15) 0 4px 9px;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: normal;
  line-height: 1.5;
  outline: none;
  overflow: hidden;
  padding: 13px 20px;
  position: relative;
  text-align: center;
  text-decoration: none;
  transform: translate3d(0, 0, 0);
  transition: all .3s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: top;
  white-space: nowrap;
}

.button-68:hover {
  background-color: #1e8449;
  opacity: 1;
  transform: translateY(0);
  transition-duration: .35s;
}

.button-68:active {
  transform: translateY(2px);
  transition-duration: .35s;
}

.button-68:hover {
  box-shadow: rgba(39, 174, 96, .2) 0 6px 12px;
}
.button-68 a{
    text-decoration: none;
    color: white;
}
    </style>
</head>
<body>
  <%
  // Cookie cookieobject[]=request.getCookies();
 String pictname = "../../UserImages/"+(String)session.getAttribute("upicture");        
%> 
    <h2>Profile Information </h2>
    <center>
     
  <table>

    <tr>
  
        <td>Program</td>
        <td class="td-left">DAE COMPUTER INFORMATION TECHNOLOGY (M)</td>
        <td rowspan="10" class="profile-pic">
       
        <img src="<%= pictname %>" alt=""> 
        <form action="../uploadfile.jsp" method="post" enctype="multipart/form-data">
           <input type="file" name="userpict" size=50> 
  <br><br>
       <button class="button-68" type="submit">Upload Profile</button>
         </form>  
        
    </td>
     
      
    </tr>
   
    <tr>
      <td>Batch</td>
      <td class="td-left">CIT-2020-MOR</td>
     
    </tr>
    <tr>
      <td>Year</td>
      <td>3RD YEAR</td>
    
     
    </tr>
    <tr>
      <td>Section</td>
      <td>B</td>
     
    </tr>
    <tr>
      <td>Registration no</td>
      <td class="td-left">AIT-CIT</td>
     
    </tr>
    <tr>
        <td>Gr no</td>
        <td><%=  (String) session.getAttribute("uid")  %></td>
       
      </tr>
      <tr>
        <td>Gender</td>
        <td><%=  (String) session.getAttribute("gender")  %></td>
       
      </tr>
      <tr>
        <td>Email</td>
        <td class="td-left"><%=  (String) session.getAttribute("email")  %></td>
       
      </tr>
      <tr>
        <td>Contact</td>
        <td class="td-left">03172599245</td>
     
      </tr>
    
      
       
           
    
</table>

  
  


    </center>
</body>
</html>