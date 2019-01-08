<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Tours List</title>
		<link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" >
	</head>
	<body>
	
	<jsp:include page="navbar.jsp"></jsp:include>
	
		 <h1>Список туров</h1>
	
		<table>
		  <tr>
		    <td>Название</td>
		    <td>Описание</td>
		    <td>Города</td>
		    <td>Дата начала</td>
		    <td>Дата окончания</td>
		    <td>Размер группы</td>
		    <td>Действие</td>
		  </tr>
		  <c:forEach items="${Tours}" var="tour">
		   <tr>
		  	 <td>${tour.name}</td>
			 <td>${tour.description}</td>
			 <td>${tour.location}</td>
			 <td>${tour.start_date}</td>
			 <td>${tour.end_date}</td>
			 <td>${tour.count_limit}</td>
			 <td>
			 <a href=" <spring:url value="/tour?id=${tour.id}" /> "> 
				 Просмотреть
			</a><br>
			<a href=" <spring:url value="/tour_edit?id=${tour.id}" /> "> 
				 Редактировать
			</a><br>
			<a href=" <spring:url value="/tour_delete?id=${tour.id}" /> "> 
				 Удалить
			</a>
			</td>
		  </tr>
		  </c:forEach>
		</table>
		<br>
		<br>
			<a href="/addtour">Добавить новый тур</a>
	</body>
</html>