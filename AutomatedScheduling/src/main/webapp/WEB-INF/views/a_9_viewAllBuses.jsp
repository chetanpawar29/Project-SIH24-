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
	List<Bus>buses=(List<Bus>)request.getAttribute("busesList");
%>

<h1 >View all Buses</h1>

<table>
<tr>
	<th>Bus id</th>
	<th>Total seats</th>
	<th>Bus Status</th>
	<th>Update</th>
	<th>Delete</th>
</tr>

<% 
for(Bus b :buses)
{
%>
<tr>
	<td><%=b.getBid() %></td>
	<td><%=b.getBseats() %></td>
	<td><%=b.getBstatus()%></td>
	<td><a href="updateB?bid=<%=b.getBid()%>&bseats=<%=b.getBseats()%>&bstatus=<%=b.getBstatus() %>">Update</a></td>
	<td><a href="deleteB?bid=<%=b.getBid()%>">Delete</a></td>
</tr>
<%
}
%>

</table>
</body>
</html>