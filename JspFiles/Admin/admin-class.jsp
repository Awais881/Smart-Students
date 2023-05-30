<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Class Schedule</title>
  <style>
   body {
  font-family: Arial, sans-serif;
  /* background-color: #f2f2f2;
  margin: 0;
  padding: 20px; */
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

.select-box {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: none;
  border-radius: 4px;
  background-color: #f9f9f9;
  transition: box-shadow 0.3s ease;
}

.select-box:focus {
  outline: none;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
}

.button {
  text-align: center;
}

.submit-button {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.submit-button:hover {
  background-color: #45a049;
}

.submit-button:focus {
  outline: none;
}
h2{
            background-color: #00c78e;
    padding: 10px;
    color: white;
}

  </style>
</head>
<body>
  <h2>Add Class Schedule</h2>
  <div class="container">
    
    <form method="post" action="./admin-addSchedule.jsp">
      <div class="form-group">
        <label class="label" for="lecture">Lecture Type:</label>
        <select class="select-box" name="lecture" id="lecture">
          <option value="practical">Practical</option>
          <option value="theory">Theory</option>
        </select>
      </div>
      <div class="form-group">
        <label class="label" for="day">Day:</label>
        <select class="select-box" name="day" id="day">
          <option value="monday">Monday</option>
          <option value="tuesday">Tuesday</option>
          <option value="wednesday">Wednesday</option>
          <option value="thursday">Thursday</option>
          <option value="friday">Friday</option>
        </select>
      </div>
      <div class="form-group">
        <label class="label" for="teacher">Teacher:</label>
        <select class="select-box" name="teacher" id="teacher">
          <option value="sir-masood">Sir Masood</option>
          <option value="sir-sajid">Sir Sajid</option>
          <option value="sir-azaz">Sir Azaz</option>
          <option value="sir-akbar">Sir Akbar</option>
          <option value="sir-ali">Sir Ali</option>
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
        <label class="label" for="time">Time:</label>
        <select class="select-box" name="time" id="time">
          <option value="08:15-09:00">08:15-09:00</option>
          <option value="09:00-09:45">09:00-09:45</option>
          <option value="09:45-10:30">09:45-10:30</option>
          <option value="10:30-11:15">10:30-11:15</option>
          <option value="11:15-12:00">11:15-12:00</option>
        </select>
      </div>
      <div class="form-group">
        <label class="label" for="room">Room No:</label>
        <select class="select-box" name="room" id="room">
          <option value="room1">Room 1</option>
          <option value="room2">Room 2</option>
          <option value="room3">Room 3</option>
          <option value="room4">Room 4</option>
          <option value="room5">Room 5</option>
        </select>
      </div>
      <div class="button">
        <input class="submit-button" type="submit" value="Add Schedule">
      </div>
    </form>
  </div>
</body>
</html>

