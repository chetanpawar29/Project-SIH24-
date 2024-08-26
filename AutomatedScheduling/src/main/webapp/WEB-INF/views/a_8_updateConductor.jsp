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
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cname=request.getParameter("cname");
		String caddress=request.getParameter("caddress");
		String cmob=request.getParameter("cmob");
		String cemail=request.getParameter("cemail");
		String cgender=request.getParameter("cgender");
		String cstatus=request.getParameter("cstatus");
%>
			<form action="updatingConductor" method="post">
				<h2>Update Conductor</h2>		
				<input type="text" name="cid" value=<%=cid %> readonly>
				<input type="text" name="cname" value="<%=cname%>">
				<input type="text" name="caddress" value="<%=caddress%>">
				<input type="text" name="cmob" value="<%=cmob%>">
				<input type="text" name="cemail" value="<%=cemail%>">
				<input type="text" name="cgender" value="<%=cgender%>">
				<input type="text" name="cstatus" value="<%=cstatus%>">
				<button >Update</button>
			</form>
</body>
</html>