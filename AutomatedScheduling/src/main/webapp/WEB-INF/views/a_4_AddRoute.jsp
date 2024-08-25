<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addRoute" method="post">
            
            <input type="text" name="rid" placeholder="Enter the route id"><br>
            <input type="text" name="rsource" placeholder="Enter the source"><br>
             <input type="text" name="rdest" placeholder="Enter the destination"><br>
             <input type="text" name="rmid" placeholder="Enter the middle stop"><br>
             
            
             <input type="submit" value="Add">
           
            <br>
        </form>
</body>
</html>