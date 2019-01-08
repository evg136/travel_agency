<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Users List</title>
		<link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" >
	</head>
	<body>
		
		<jsp:include page="navbar.jsp"></jsp:include>
	
		<table>
		  <tr>
		    <th>Id</th>
		    <th>First_Name</th>
		    <th>Last_Name</th>
		    <th>Email</th>
		    <th>Password</th>
		    <th>Birthday</th>
		    <th>Actions
		  </tr>
		  <c:forEach items="${Users}" var="user">
		   <tr>
		  	 <td>${user.id}</td>
			 <td>${user.first_name}</td>
			 <td>${user.last_name}</td>
			 <td>${user.email}</td>
			 <td>${user.password}</td>
			 <td>${user.birthday}</td>
			 <td>
			 <a href=" <spring:url value="/userinfo?id=${user.id}" /> "> 
				 Просмотреть/Изменить
			</a>
			</td>
		  </tr>
		  </c:forEach>
		</table>
		<br>
		<br>
	</body>
</html>