<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Notice</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    
    }

    h2 {
      background-color: #00c78e;
      padding: 10px;
      color: white;
    }

    form {
      max-width: 500px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    label {
      font-weight: bold;
    }

    input[type="date"],
    input[type="text"],
    textarea {
      width: 100%;
      padding: 8px;
      font-size: 16px;
      border: 1px solid #ddd;
      border-radius: 4px;
    }

    textarea {
      resize: vertical;
      height: 120px;
    }

    input[type="submit"] {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body onload="getCurrentDate()">
  <h2>Add Notice</h2>
  <form method="post" action="add-notice.jsp">
    <div>
      <label for="date">Date:</label>
      <input type="date" name="date" id="date" required>
    </div>
    <div>
      <label for="title">Title:</label>
      <input type="text" name="title" id="title" required>
    </div>
    <div>
      <label for="content">Content:</label>
      <textarea name="content" id="content" rows="4" required></textarea>
    </div>
    <div>
      <input type="submit" value="Add Notice">
    </div>
  </form>
</body>
</html>
