<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Notices</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
    }

    h2 {
      background-color: #00c78e;
      padding: 10px;
      color: white;
    }

    .notice {
      margin-bottom: 20px;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .notice .date {
      font-weight: bold;
      color: #888;
    }

    .notice .title {
      font-weight: bold;
      color: #4CAF50;
    }

    .notice .content {
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <h2>Student Notices</h2>

  <%-- Fetch notices from the database and iterate over them --%>
  <% 
    // Fetch notices from the database (replace with your actual code)
    List<Notice> notices = fetchNoticesFromDatabase();

    // Check if there are any notices
    if (notices.isEmpty()) { 
  %>
    <p>No notices found.</p>
  <% 
    } else {
      // Iterate over the notices and display them
      for (Notice notice : notices) { 
  %>
        <div class="notice">
          <div class="date"><%= notice.getDate() %></div>
          <div class="title"><%= notice.getTitle() %></div>
          <div class="content"><%= notice.getContent() %></div>
        </div>
  <% 
      }
    }
  %>
</body>
</html>
