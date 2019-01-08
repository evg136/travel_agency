<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Travel Agency</title>
</head>

<body>
	<h1>Register</h1>

	<form action="/register" method="post" id="registerForm">

		<label for="username">Username: </label> 
		<input type="text" name="username" /><br /> 
		
		<label for="password">Password: </label> 
		<input type="password" name="password" /><br /> 
		
		<label for="confirm">Confirm password: </label> 
		<input type="password" name="confirm" /><br /> 
		
		<label for="first_name">First name: </label> 
		<input type="text" name="first_name" /><br /> 
		
		<label for="last_name">Last name: </label> 
		<input type="text" name="last_name" /><br /> 
		
		<label for="email">Email: </label> 
		<input type="email" name="email" /><br /> 
		
		<label for="birthday">Birthday: </label> 
		<input type="date" name="birthday" /> <br /> 
		
		<input type="submit" value="Register" />

	</form>
</body>
</html>