Add Conductor ------- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="addConductor" method="post">
	<h1>Add Conductor</h1>
	Id: <input type="text" name="cid" placeholder="Enter Conductor id">
	<br><br>
	
	Email: <input type="text" name="cemail" placeholder="Enter Conductor email">
	<br><br>
	
	Name: <input type="text" name="cname" placeholder="Enter Conductor name">
	<br><br>
	
	Mobile No.: <input type="text" name="cmob" placeholder="Enter Conductor mobile no">
	<br><br>
	
	Address: <input type="text" name="caddress" placeholder="Enter Conductor address">
	<br><br>
	
	Gender: <select name="cgender">
				<option></option>
				<option>Male</option>
				<option>Female</option>
				
			</select>
	<br><br>
	Status: <input type="text" name="cstatus" readonly="readonly" value="Available">
	<br><br>
	<input type="submit" value="Add">
	</form>
</body>
</html>