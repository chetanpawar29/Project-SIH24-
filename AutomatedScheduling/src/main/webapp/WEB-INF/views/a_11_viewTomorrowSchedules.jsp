<%@page import="java.time.LocalDate"%>
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
        List<Schedule> scheduleList = (List<Schedule>)request.getAttribute("scheduleList");
        String tomorrowDate = LocalDate.now().plusDays(1).toString();


%>
		<h1>Tommorow's Schedule </h1>
		
		<table border="1">
		<tr>
			<th>Sid</th>
			<th>Driver id</th>
			<th>Driver Name</th>
			<th>Conductor id</th>
			<th>Conductor Name</th>
			<th>Time</th>
			<th>Route id</th>
			<th>Route source</th>
			<th>Route destination</th>
			<th>Route middle</th>
			<th>C Duty Type</th>
			<th>D Duty Type</th>
			<th>View Route</th>
			
		</tr>
		
		<% 
		for(Schedule l :scheduleList)
		{
			if(l.getsDate().equals(tomorrowDate))
			{

		%>
		<tr>
			<td><%=l.getSid() %></td>
			
			<td><%=l.getDid()%></td>
			<td><%=l.getDname()%></td>
			<td><%=l.getCid()%></td>
			<td><%=l.getCname()%></td>
			<td><%=l.getTime()%></td>
			<td><%=l.getRid()%></td>
			<td><%=l.getRsource()%></td>
			<td><%=l.getRdest()%></td>
			<td><%=l.getRmid()%></td>
			<td><%=l.getCdutyType() %></td>
			<td><%=l.getDdutyType() %></td>
			<td><button><a href="viewMap?rsource=<%=l.getRsource()%>&rdest=<%=l.getRdest()%>">View Route</a></button></td>
		</tr>
		<%
			}
		}
		%>
		
</table>
</body>
</body>
</html>