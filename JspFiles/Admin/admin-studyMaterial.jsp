<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Study Material</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
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

    .input-box {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      background-color: #f9f9f9;
      transition: box-shadow 0.3s ease;
    }

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
  </style>
</head>
<body>
  <div class="container">
    <div class="title">Add Study Material</div>
    <form method="post" action="" enctype="multipart/form-data">
      <div class="form-group">
        <label class="label" for="file">File:</label>
        <input class="input-box" type="file" name="file" id="file" required>
      </div>
      <div class="button">
        <input class="submit-button" type="submit" value="Upload">
      </div>
    </form>
  </div>
</body>
</html>