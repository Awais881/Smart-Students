<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Schedule</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* background-color: #f2f2f2; */
            margin: 0;
            padding: 20px;
        }

        h2{
            background-color: #00c78e;
    padding: 10px;
    color: white;
}

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        select {
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        th {
            background-color: #00c78e;
            color: white;
        }

        .no-data {
            text-align: center;
            font-weight: bold;
        }
    </style>
    <script>
        function fetchSchedule() {
            var exam_type = document.getElementById("exam_type").value;
            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("scheduleTable").innerHTML = xmlhttp.responseText;
                }
            };

            xmlhttp.open("GET", "student-ExamSchedule.jsp?exam_type=" + exam_type, true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
    <h2>Exam  Schedule</h2>
    <form>
        <label for="exam_type">Select a Exam:</label>
        <select name="exam_type" id="exam_type"" onchange="fetchSchedule()">
            <option value="">Select a Exam Type</option>
            <option value="midterm">Mid-term</option>
            <option value="finalterm">Final-term</option>
         
            <!-- Add more options for other days if needed -->
        </select>
    </form>

    <table id="scheduleTable">
        <tr>
            <th>Course</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
          
        </tr>
    </table>
</body>
</html>
