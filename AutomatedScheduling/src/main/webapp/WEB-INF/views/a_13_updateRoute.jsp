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
		int rid=Integer.parseInt(request.getParameter("rid"));
		String rsource=request.getParameter("rsource");
		String rdest=request.getParameter("rdest");
		String rmid=request.getParameter("rmid");
		String rstatus=request.getParameter("rstatus");
		String time=request.getParameter("time");

%>
			<form action="updatingRoute" method="post">
				<h2>Update Route</h2>		
				<input type="text" name="rid" value=<%=rid %>>
				<input type="text" name="rsource" value="<%=rsource%>">
				<input type="text" name="rdest" value="<%=rdest%>">
				<input type="text" name="rmid" value="<%=rmid%>">
				<input type="text" name="rstatus" value="<%=rstatus%>">
				<input type="text" name="time" value="<%=time%>">
				<button>Update</button>
			</form>
</body>
</html>