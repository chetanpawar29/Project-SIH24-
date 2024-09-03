<%@page import="com.scheduling.model.*"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	List<Schedule>schedules=(List<Schedule>)request.getAttribute("scheduleList");
	String todaysDate = LocalDate.now().toString();

%>

<h1 >View Todays's Schedule </h1>

<table>
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
	<th>Date</th>
	<th>C Duty type</th>
	<th>D Duty type</th>
</tr>

<% 
for(Schedule r :schedules)
{
	if(r.getsDate().equals(todaysDate))
	{
%>
<tr>
	<td><%=r.getSid() %></td>
	<td><%=r.getDid()%></td>
	<td><%=r.getDname()%></td>
	<td><%=r.getCid()%></td>
	<td><%=r.getCname()%></td>
	<td><%=r.getTime()%></td>
	<td><%=r.getRid()%></td>
	<td><%=r.getRsource()%></td>
	<td><%=r.getRdest()%></td>
	<td><%=r.getRmid()%></td>
	<td><%=r.getsDate()%></td>
	<td><%=r.getCdutyType()%></td>
	<td><%=r.getDdutyType()%></td>
	
</tr>
<%
}
}
%>

</table>
</body>
</body>
</html>