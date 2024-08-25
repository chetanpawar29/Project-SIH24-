<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="addDriver" method="post">
	<h1>Add Driver</h1>
	Id: <input type="text" name="did" placeholder="Enter Driver id">
	<br><br>
	
	Email: <input type="text" name="demail" placeholder="Enter Driver email">
	<br><br>
	
	Name: <input type="text" name="dname" placeholder="Enter Driver name">
	<br><br>
	
	Mobile No.: <input type="text" name="dmob" placeholder="Enter Driver mobile no">
	<br><br>
	
	Address: <input type="text" name="daddress" placeholder="Enter Driver address">
	<br><br>
	
	Gender: <select name="dgender">
				<option></option>
				<option>Male</option>
				<option>Female</option>
				
			</select>
	<br><br>
	Status: <input type="text" name="dstatus" readonly="readonly" value="Available">
	<br><br>
	<input type="submit" value="Add">
	</form>
</body>
</html>