<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>Tour Info</title>
      <link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" >
   </head>
   <body>
      
      <jsp:include page="navbar.jsp"></jsp:include>
      
      <h1>Подробная информация о туре</h1>   
		    <h2>Id: ${tour.id}</h2>
		    <h2>Название тура:  ${tour.name}</h2>
		    <h2>Описание тура: ${tour.description}</h2>
		    <h2>Города: ${tour.location}</h2>
		    <h2>Дата начала: ${tour.start_date}</h2>
		    <h2>Дата окончания: ${tour.end_date}</h2>
		    <h2>Размер группы: ${tour.count_limit}</h2>
   </body>
    
</html>