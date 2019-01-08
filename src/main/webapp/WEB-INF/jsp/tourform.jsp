<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>Tour Page</title>
      <link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" >
   </head>
   <body>
      
      <jsp:include page="navbar.jsp"></jsp:include>
      
      <c:choose>
      	<c:when test="${Action==true}">
      <h1>Добавление нового тура</h1>
			<form action="/addtour" method="post" id="addTourForm">
				
				<input type="hidden" name="id" value="${tour_edit.id}">
				
				<label for="name">Название тура: </label>
				<input type="text" name="name" value="${tour_edit.name}"/><br/>
				
				<label for="description">Описание тура: </label><br>
				<textarea id="description" name="description" rows="5" cols="30">${tour_edit.description}</textarea>
				<br>
				
				<label for="location">Города: </label>
				<input type="text" name="location" value="${tour_edit.location}"/><br/>
				
				<label for="start_date">Дата начала: </label>
				<input type="date" name="start_date" value="${tour_edit.start_date}"/><br/>
				
				<label for="end_date">Дата окончания: </label>
				<input type="date" name="end_date" value="${tour_edit.end_date}"/><br/>
				
				<label for="count_limit">Размер группы: </label>
				<input type="text" name="count_limit" value="${tour_edit.count_limit}" /> <br/>
				
				<input type="submit" value="Добавить тур"/>
			</form>  
		 </c:when>
		 <c:when test="${Action!=true}">
      <h1>Редактирование тура</h1>
			<form action="/tour_edit" method="post" id="editTourForm">
				
				<input type="hidden" name="id" value="${tour_edit.id}">
				
				<label for="name">Название тура: </label>
				<input type="text" name="name" value="${tour_edit.name}"/><br/>
				
				<label for="description">Описание тура: </label><br>
				<textarea id="description" name="description" rows="5" cols="30">${tour_edit.description}</textarea>
				<br>
				
				<label for="location">Города: </label>
				<input type="text" name="location" value="${tour_edit.location}"/><br/>
				
				<label for="start_date">Дата начала: </label>
				<input type="date" name="start_date" value="${tour_edit.start_date}"/><br/>
				
				<label for="end_date">Дата окончания: </label>
				<input type="date" name="end_date" value="${tour_edit.end_date}"/><br/>
				
				<label for="count_limit">Размер группы: </label>
				<input type="text" name="count_limit" value="${tour_edit.count_limit}" /> <br/>
				
				<input type="submit" value="Изменить"/>
			</form>  
		 </c:when>
		 </c:choose>	 
   </body>
    
</html>