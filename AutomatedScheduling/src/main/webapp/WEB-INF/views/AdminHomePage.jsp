<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Background Video */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            color: white;
            overflow-x: hidden;
        }

        video {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        /* Background Overlay */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark transparent layer */
            backdrop-filter: blur(5px);
            z-index: -1;
        }

        /* Dashboard Container */
        .dashboard {
            background: rgba(0, 0, 0, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.3);
            width: 60%;
            margin: 60px auto;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            font-size: 28px;
            color: #ffcc00;
            text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.5);
        }

        h3 {
            font-size: 22px;
            color: #ffcc00;
            margin-top: 20px;
        }

        .menu {
            list-style: none;
            padding: 0;
        }

        .menu li {
            margin: 15px 0;
        }

        .menu a {
            display: block;
            text-decoration: none;
            font-weight: bold;
            color: white;
            padding: 12px;
            border-radius: 5px;
            background: #009688;
            transition: 0.3s ease-in-out;
            box-shadow: 0px 0px 5px rgba(0, 150, 136, 0.6);
        }

        .menu a:hover {
            background: #00796b;
            box-shadow: 0px 0px 10px rgba(0, 150, 136, 0.8);
            transform: scale(1.05);
        }

        /* Back to Home Button */
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 20px;
            background: #ffcc00;
            color: black;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            transition: 0.3s ease-in-out;
            box-shadow: 0px 0px 5px rgba(255, 204, 0, 0.6);
        }

        .back-btn:hover {
            background: #e6b800;
            box-shadow: 0px 0px 10px rgba(255, 204, 0, 0.8);
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <!-- Background Video -->
    <video autoplay loop muted>
        <source src="bus vdio.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Background Overlay -->
    <div class="overlay"></div>

    <!-- Dashboard Container -->
    <div class="dashboard">
        <h2>Admin Dashboard</h2>

        <h3>Conductor Management</h3>
        <ul class="menu">
            <li><a href="openAddConductor">Add Conductor</a></li>
            <li><a href="viewAllConductors">View Conductors</a></li>
        </ul>

        <h3>Driver Management</h3>
        <ul class="menu">
            <li><a href="openAddDriver">Add Driver</a></li>
            <li><a href="viewAllDrivers">View Drivers</a></li>
        </ul>

        <h3>Bus Assignment</h3>
        <ul class="menu">
            <li><a href="assign_bus.html">Add Bus</a></li>
            <li><a href="assign_bus.html">View Buses</a></li>
        </ul>
        
        <h3>Route Management</h3>
        <ul class="menu">
            <li><a href="addRoutes">Add Route</a></li>
            <li><a href="viewAllRoutes">View Routes</a></li> 
        </ul>
        
        <h3>Schedule</h3>
        <ul class="menu">
            <li><a href="generateTomorrowSchedule">Generate Tomorrow Schedule</a></li>
            <li><a href="viewTomorrowSchedules">View Tomorrow's Schedules</a></li>
            <li><a href="viewTodaySchedules">View Today's Schedules</a></li>
        </ul>

        <a href="home" class="back-btn">Back to Home</a>
    </div>

</body>
</html>
