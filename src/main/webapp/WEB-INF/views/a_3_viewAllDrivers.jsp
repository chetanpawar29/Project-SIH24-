<%@page import="com.scheduling.model.*" %>
<%@page import="java.util.*" %>
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
	List<Drivers>driver=(List<Drivers>)request.getAttribute("driverList");
%>
<div class="driver-container">
 <h2 style="color:#F2125E;">View All Drivers</h2>
<table>

<tr>
	<th>Driver Id</th>
	<th>Driver Name</th>
	<th>Driver Address</th>
	<th>Driver Mobile</th>
	<th>Driver Email</th>
	<th>Driver Gender</th>
	<th>Driver Status</th>
	<th>Update Details</th>
	<th>Delete</th>
</tr>

<% 
for(Drivers d :driver)
{%>
<tr>
	<td><%=d.getDid() %></td>
	<td><%=d.getDname() %></td>
	<td><%=d.getDaddress()%></td>
	<td><%=d.getDmob() %></td>
	<td><%=d.getDemail()%></td>
	<td><%=d.getDgender()%></td>
	<td><%=d.getDstatus()%></td>
	<td><a href="update?did=<%=d.getDid()%>&dname=<%=d.getDname()%>&daddress=<%=d.getDaddress()%>&dmob=<%=d.getDmob()%>&demail=<%=d.getDemail()%>&dgender=<%=d.getDgender()%>">Update</a></td>
	<td><a href="delete?did=<%=d.getDid()%>">Delete</a></td>
</tr>
<%
}
%>
<tr>

</tr>
</table>
</div>
</body>
</html>