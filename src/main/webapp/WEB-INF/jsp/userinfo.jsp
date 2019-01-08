<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>User Info</title>
      <link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" >
   </head>
   <body>
      
      <jsp:include page="navbar.jsp"></jsp:include>
      
      <h1>User Info Page</h1>
      <c:choose>
      	<c:when test="${Action==true}">
			<form action="/userinfo" method="post" id="registerForm">
				
				<input type="hidden" name="id" value="${user.id}">
				<input type="hidden" name="active" value="${user.active}">
				
				<label for="username">Username: </label>
				<input type="text" name="username" value="${user.username}"/><br/>
				
				<label for="password">Password: </label>
				<input type="password" name="password"/><br/>
				
				<label for="confirm">Confirm password: </label>
				<input type="password" name="confirm"/><br/>
				
				<label for="first_name">First name: </label>
				<input type="text" name="first_name" value="${user.first_name}"/><br/>
				
				<label for="last_name">Last name: </label>
				<input type="text" name="last_name" value="${user.last_name}"/><br/>
				
				<label for="email">Email: </label>
				<input type="email" name="email" value="${user.email}"/><br/>
				
				<label for="birthday">Birthday: </label>
				<input type="date" name="birthday" value="${user.birthday}" /> <br/>
				
				<input type="submit" value="Updateprofile"/>
			
			</form>
        </c:when> 
        <c:when test="${Action==false}">
        
		    <h2>Id: ${user.id}</h2>
		    <h2>User Name:  ${user.username}</h2>
		    <h2>First Name: ${user.first_name}</h2>
		    <h2>Last Name: ${user.last_name}</h2>
		    <h2>Email: ${user.email}</h2>
		    <h2>Password: ${user.password}</h2>
		    <h2>Birthday: ${user.birthday}</h2>
		  
   		</c:when> 
   </c:choose>    
   </body>
    
</html>