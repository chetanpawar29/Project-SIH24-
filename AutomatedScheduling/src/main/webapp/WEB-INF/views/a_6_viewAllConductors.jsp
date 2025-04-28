<%@page import="com.scheduling.model.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Drivers</title>
    <style>
        /* Reset and Base Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            color: white;
            overflow-x: hidden;
            position: relative;
        }

        /* Background Video */
        video {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -2;
        }

        /* Dark Overlay for Better Readability */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.9));
            z-index: -1;
        }

        /* Container */
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
            width: 90%;
            margin: 50px auto;
            overflow-x: auto;
            backdrop-filter: blur(10px);
        }

        h1 {
            color: #ffcc00;
            text-shadow: 2px 2px 6px rgba(255, 255, 255, 0.5);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: rgba(255, 255, 255, 0.95);
            color: black;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #ffcc00;
            color: black;
            font-size: 16px;
        }

        td a {
            text-decoration: none;
            font-weight: bold;
            color: white;
            padding: 6px 12px;
            border-radius: 5px;
            transition: 0.3s ease;
            display: inline-block;
        }

        td a[href*="update"] {
            background: #00796b;
        }

        td a[href*="delete"] {
            background: #e74c3c;
        }

        td a:hover {
            opacity: 0.8;
        }

        /* Back to Dashboard Button */
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background: #ffcc00;
            color: black;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            transition: 0.3s ease-in-out;
            font-size: 16px;
        }

        .back-btn:hover {
            background: #e6b800;
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

    <!-- Overlay -->
    <div class="overlay"></div>

    <%
    List<Conductor> conductor = (List<Conductor>) request.getAttribute("conductorsList");
    %>

    <!-- Content Container -->
    <div class="container">
        <h1>View All Drivers</h1>
        <table>
            <tr>
                <th>Conductor ID</th>
                <th>Conductor Name</th>
                <th>Conductor Address</th>
                <th>Conductor Mobile</th>
                <th>Conductor Email</th>
                <th>Conductor Gender</th>
                <th>Conductor Status</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>

            <%
            for (Conductor c : conductor) {
            %>
            <tr>
                <td><%= c.getCid() %></td>
                <td><%= c.getCname() %></td>
                <td><%= c.getCaddress() %></td>
                <td><%= c.getCmob() %></td>
                <td><%= c.getCemail() %></td>
                <td><%= c.getCgender() %></td>
                <td><%= c.getCstatus() %></td>
                <td><a href="update?cid=<%= c.getCid() %>&cname=<%= c.getCname() %>&caddress=<%= c.getCaddress() %>&cmob=<%= c.getCmob() %>&cemail=<%= c.getCemail() %>&cgender=<%= c.getCgender() %>&cstatus=<%= c.getCstatus() %>">Update</a></td>
                <td><a href="deleteC?cid=<%= c.getCid() %>">Delete</a></td>
            </tr>
            <%
            }
            %>

        </table>
        <a href="loginAdmin" class="back-btn">Back to Dashboard</a>
    </div>

</body>
</html>
