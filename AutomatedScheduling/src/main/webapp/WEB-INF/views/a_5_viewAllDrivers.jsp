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
	List<Drivers>drivers=(List<Drivers>)request.getAttribute("driversList");
%>

<h1 >View all Drivers</h1>

<table>
<tr>
	<th>Driver id</th>
	<th>Driver Name</th>
	<th>Driver Address</th>
	<th>Driver mobile</th>
	<th>Driver Email</th>
	<th>Driver Gender</th>
	<th>Driver Status</th>
	<th>Update</th>
	<th>Delete</th>
</tr>

<% 
for(Drivers d :drivers)
{
%>
<tr>
	<td><%=d.getDid() %></td>
	<td><%=d.getDname() %></td>
	<td><%=d.getDaddress()%></td>
	<td><%=d.getDmob() %></td>
	<td><%=d.getDemail()%></td>
	<td><%=d.getDgender() %></td>
	<td><%=d.getDstatus() %></td>
	<td><a href="updateD?did=<%=d.getDid()%>&dname=<%=d.getDname()%>&daddress=<%=d.getDaddress()%>&dmob=<%=d.getDmob() %>&demail=<%=d.getDemail()%>&dgender=<%=d.getDgender() %>&dstatus=<%=d.getDstatus() %>">Update</a></td>
	<td><a href="delete?did=<%=d.getDid()%>">Delete</a></td>
</tr>
<%
}
%>

</table>
</body>
</html>