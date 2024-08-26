<%@page import="com.scheduling.model.*"%>
<%@page import="java.util.List"%>
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
    List<Bus> busList = (List<Bus>)request.getAttribute("busList");
    List<Conductor> conductorList = (List<Conductor>)request.getAttribute("conductorList");
    List<Drivers> driverList = (List<Drivers>)request.getAttribute("driverList");
    List<Route> routeList = (List<Route>)request.getAttribute("routeList");

    // Determine the minimum size to avoid IndexOutOfBoundsException
    int minSize = Math.min(Math.min(busList.size(), conductorList.size()), Math.min(driverList.size(), routeList.size()));
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
        for (int i = 0; i < minSize; i++) {
            Drivers d = driverList.get(i);
            Conductor c = conductorList.get(i);
            Bus b = busList.get(i);
            Route r = routeList.get(i);
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
</body>
</html>
