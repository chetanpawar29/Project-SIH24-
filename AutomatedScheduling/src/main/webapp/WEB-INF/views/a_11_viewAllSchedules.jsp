<%@page import="java.util.Random"%>
<%@page import="com.scheduling.model.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Schedule</title>
</head>
<body>
<%
    // Get the current time
    LocalTime currentTime = LocalTime.now();
    LocalTime scheduledTime = LocalTime.of(22, 26); // 5 p.m.

    // Check if the current time is around 5 p.m. (5 p.m. to 5:59 p.m.)
    if (currentTime.isAfter(scheduledTime) && currentTime.isBefore(scheduledTime.plusHours(1))) {
        List<Bus> busList = (List<Bus>)request.getAttribute("busList");
        List<Conductor> conductorList = new ArrayList<Conductor>((List<Conductor>)request.getAttribute("conductorList"));
        List<Drivers> driverList = new ArrayList<Drivers>((List<Drivers>)request.getAttribute("driverList"));
        List<Route> routeList = (List<Route>)request.getAttribute("routeList");

        // Filter lists to only include available buses, routes, drivers, and conductors
        List<Bus> availableBuses = new ArrayList<Bus>();
        for (Bus bus : busList) {
            if (bus.getBstatus().equals("available")) {
                availableBuses.add(bus);
            }
        }

        List<Conductor> availableConductors = new ArrayList<Conductor>();
        for (Conductor conductor : conductorList) {
            if (conductor.getCstatus().equals("Available")) {
                availableConductors.add(conductor);
            }
        }

        List<Drivers> availableDrivers = new ArrayList<Drivers>();
        for (Drivers driver : driverList) {
            if (driver.getDstatus().equals("Available")) {
                availableDrivers.add(driver);
            }
        }

        List<Route> availableRoutes = new ArrayList<Route>();
        for (Route route : routeList) {
            if (route.getRstatus().equals("available")) {
                availableRoutes.add(route);
            }
        }

        // Determine the minimum size to avoid IndexOutOfBoundsException
        int minSize = Math.min(Math.min(availableBuses.size(), availableConductors.size()), Math.min(availableDrivers.size(), availableRoutes.size()));

        // Sets to keep track of assigned drivers and conductors
        Set<Integer> assignedDriverIds = new HashSet<Integer>();
        Set<Integer> assignedConductorIds = new HashSet<Integer>();
%>

<h1>View Schedule</h1>

<table border="1">
    <tr>
        <th>Driver ID</th>
        <th>Driver Name</th>
        <th>Conductor ID</th>
        <th>Conductor Name</th>
        <th>Bus ID</th>
        <th>Route ID</th>
        <th>Route Source</th>
        <th>Route Mid Stop</th>
        <th>Route Destination</th>
    </tr>

    <% 
        Random random = new Random();
    
        for (int i = 0; i < minSize; i++) {
            Bus b = availableBuses.get(i);
            Route r = availableRoutes.get(i);
            
            Conductor c = null;
            Drivers d = null;

            // Find a unique conductor
            do {
                c = availableConductors.get(random.nextInt(availableConductors.size()));
            } while (assignedConductorIds.contains(c.getCid()));

            // Find a unique driver
            do {
                d = availableDrivers.get(random.nextInt(availableDrivers.size()));
            } while (assignedDriverIds.contains(d.getDid()));
            
            // Mark the conductor and driver as assigned
            assignedConductorIds.add(c.getCid());
            assignedDriverIds.add(d.getDid());
    %>
    <tr>
        <td><%= d.getDid() %></td>
        <td><%= d.getDname() %></td>
        <td><%= c.getCid() %></td>
        <td><%= c.getCname() %></td>
        <td><%= b.getBid() %></td>
        <td><%= r.getRid() %></td>
        <td><%= r.getRsource() %></td>
        <td><%= r.getRmid() %></td>
        <td><%= r.getRdest() %></td>
    </tr>
    <% } %>

</table>

<% 
    } else { 
%>
    <h1>Schedule generation is allowed only between 5:00 PM and 5:59 PM</h1>
<% 
    } 
%>
</body>
</html>
