<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h2{
    background-color:#007bff;
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
    <h2>Attendance Information </h2>


    <div class="container">
    
        <div class="user-type">
            <label for="attendence">Course :</label>
    
            <select id="attendence" class="select" name="subjects">
              <option value="student" >Islamiat/ Pakistan Study</option>
              <option value="admin">Technical Report Writting</option>
              <option value="employee">Management</option>
              <option value="employee">Networking</option>
              <option value="employee">Web Development WITH JAVA</option>
              <option value="employee"> Project</option>
            </select>
    
          
    </div> <br>
     <hr> <br>

   <div class="flex">
    <div>From</div>
    <div><input type="date" name="from-date" id="from-date"></div>
    <div>to : </div>
    <div> <input type="date" name="to-date" id="to-date"></div>
   </div>
  
     <button>View</button>
   
    </div>
    <div>
        <h2>Attendance  </h2>
        <table>
            <tr>
                <th>Date</th>
                <th>Lecture</th>
                <th>Status</th>
            </tr>
        </table>

    </div>
</body>
</html>