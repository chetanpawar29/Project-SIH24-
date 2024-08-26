<%@page import="com.scheduling.model.*"%>
<%@page import="java.util.List"%>
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
	List<Route>routes=(List<Route>)request.getAttribute("routeList");
%>

<h1 >View all Routes</h1>

<table>
<tr>
	<th>Route id</th>
	<th>Route Source</th>
	<th>Route Destination</th>
	<th>Route Middle</th>
	<th>Route Timing</th>
	<th>Route Status</th>
	<th>Update</th>
	<th>Delete</th>
</tr>

<% 
for(Route r :routes)
{
%>
<tr>
	<td><%=r.getRid() %></td>
	<td><%=r.getRsource()%></td>
	<td><%=r.getRdest()%></td>
	<td><%=r.getRmid()%></td>
	<td><%=r.getTime()%></td>
	<td><%=r.getRstatus()%></td>
	<td><a href="updateR?rid=<%=r.getRid()%>&rsource=<%=r.getRsource()%>&rdest=<%=r.getRdest() %>&rmid=<%=r.getRmid()%>&time=<%=r.getTime() %>&rstatus=<%=r.getRstatus() %>">Update</a></td>
	<td><a href="deleteR?rid=<%=r.getRid()%>">Delete</a></td>
</tr>
<%
}
%>

</table>
</body>
</body>
</html>