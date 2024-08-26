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
	List<Conductor>conductor=(List<Conductor>)request.getAttribute("conductorsList");
%>

<h1 >View all Conductors</h1>

<table>
<tr>
	<th>Conductor id</th>
	<th>Conductor Name</th>
	<th>Conductor Address</th>
	<th>Conductor mobile</th>
	<th>Conductor Email</th>
	<th>Conductor Gender</th>
	<th>Conductor Status</th>
	<th>Update</th>
	<th>Delete</th>
</tr>

<% 
for(Conductor c :conductor)
{
%>
<tr>
	<td><%=c.getCid() %></td>
	<td><%=c.getCname() %></td>
	<td><%=c.getCaddress() %></td>
	<td><%=c.getCmob() %></td>
	<td><%=c.getCemail() %></td>
	<td><%=c.getCgender() %></td>
	<td><%=c.getCstatus() %></td>
	<td><a href="update?cid=<%=c.getCid()%>&cname=<%=c.getCname()%>&caddress=<%=c.getCaddress()%>&cmob=<%=c.getCmob() %>&cemail=<%=c.getCemail()%>&cgender=<%=c.getCgender()%>&cstatus=<%=c.getCstatus()%> ">Update</a></td>
	<td><a href="deleteC?cid=<%=c.getCid()%>">Delete</a></td>
</tr>
<%
}
%>

</table>
</body>
</html>