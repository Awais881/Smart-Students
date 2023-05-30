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
            var day = document.getElementById("day").value;
            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("scheduleTable").innerHTML = xmlhttp.responseText;
                }
            };

            xmlhttp.open("GET", "studentSchedule.jsp?day=" + day, true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
    <h2>Student Schedule</h2>
    <form>
        <label for="day">Select a day:</label>
        <select name="day" id="day" onchange="fetchSchedule()">
            <option value="">Select a day</option>
            <option value="Monday">Monday</option>
            <option value="Tuesday">Tuesday</option>
            <option value="Wednesday">Wednesday</option>
            <option value="Thursday">Thursday</option>
            <option value="Friday">Friday</option>
            <!-- Add more options for other days if needed -->
        </select>
    </form>

    <table id="scheduleTable">
        <tr>
            <th>Day</th>
            <th>Lecture Type</th>
            <th>Course</th>
            <th>Teacher</th>
            <th>Time</th>
            <th>Room No</th>
        </tr>
    </table>
</body>
</html>
