<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Exam Schedule</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px;
    }

    .title {
      font-size: 24px;
      font-weight: bold;
      text-align: center;
      margin-bottom: 20px;
      color: #4CAF50;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .label {
      font-weight: bold;
    }

    .select-box,
    .input-box {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      background-color: #f9f9f9;
      transition: box-shadow 0.3s ease;
    }

    .select-box:focus,
    .input-box:focus {
      outline: none;
      box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
    }

    .button {
      text-align: center;
    }

    .submit-button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .submit-button:hover {
      background-color: #45a049;
    }
    h2{
            background-color: #00c78e;
    padding: 10px;
    color: white;
}

  </style>
</head>
<body>
  <h2>Add Exam Schedule</h2>
  <div class="container">
   
    <form method="post" action="./addExam.jsp">
      <div class="form-group">
        <label class="label" for="examType">Exam Type:</label>
        <select class="select-box" name="examType" id="examType">
          <option value="midterm">Mid-term Exam</option>
          <option value="finalterm">Final-term Exam</option>
        </select>
      </div>
      <div class="form-group">
        <label class="label" for="course">Course:</label>
        <select class="select-box" name="course" id="course">
          <option value="Islamiat">Islamiat/Pakistan Study</option>
          <option value="Management">Management</option>
          <option value="Networking">Networking</option>
          <option value="WebDevelopmentwithJava">Web Development with Java</option>
          <option value="Project">Project</option>
        </select>
      </div>
      <div class="form-group">
        <label class="label" for="date">Date:</label>
        <input class="input-box" type="date" name="date" id="date">
      </div>
      <div class="form-group">
        <label class="label" for="startTime">Start Time:</label>
        <input class="input-box" type="time" name="startTime" id="startTime">
      </div>
      <div class="form-group">
        <label class="label" for="endTime">End Time:</label>
        <input class="input-box" type="time" name="endTime" id="endTime">
      </div>
      <div class="button">
        <input class="submit-button" type="submit" value="Add Exam Schedule">
      </div>
    </form>
  </div>
</body>
</html>
