<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Holidays</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title'
                    // right: 'month,agendaWeek,agendaDay'
                },
                events: {
                    url: 'GetHolidays.jsp',
                    type: 'POST',
                    error: function() {
                        alert('Error fetching holidays');
                    }
                }
            });
        });
    </script>
    <style>
        #calendar {
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <h1>List of Holidays</h1>
    <div id="calendar"></div>
</body>
</html>
