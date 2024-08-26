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
		int did=Integer.parseInt(request.getParameter("did"));
		String dname=request.getParameter("dname");
		String daddress=request.getParameter("daddress");
		String dmob=request.getParameter("dmob");
		String demail=request.getParameter("demail");
		String dgender=request.getParameter("dgender");
		String dstatus=request.getParameter("dstatus");
%>
			<form action="updatingDriver" method="post">
				<h2>Update Driver</h2>		
				<input type="text" name="did" value=<%=did %> readonly>
				<input type="text" name="dname" value="<%=dname%>">
				<input type="text" name="daddress" value="<%=daddress%>">
				<input type="text" name="dmob" value="<%=dmob%>">
				<input type="text" name="demail" value="<%=demail%>">
				<input type="text" name="dgender" value="<%=dgender%>">
				<input type="text" name="dstatus" value="<%=dstatus%>">
				<button>Update</button>
			</form>
</body>
</html>