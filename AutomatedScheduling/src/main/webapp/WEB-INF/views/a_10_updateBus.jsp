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
		int bseats=Integer.parseInt(request.getParameter("bseats"));
		String bid=request.getParameter("bid");
		String bstatus=request.getParameter("bstatus");

%>
			<form action="updatingBus" method="post">
				<h2>Update Driver</h2>		
				<input type="text" name="bid" value=<%=bid %> readonly>
				<input type="text" name="bseats" value="<%=bseats%>">
				<input type="text" name="bstatus" value="<%=bstatus%>">
				<button>Update</button>
			</form>
</body>
</html>