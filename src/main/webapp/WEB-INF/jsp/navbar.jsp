<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<div>
<a href="<spring:url value="/"/>" >Home</a>  | &nbsp;
<a href="<spring:url value="/tours"/>" >Tours</a>  | &nbsp;
<a href="<spring:url value="/userinfo"/>" >Profile info</a>  | &nbsp;
<a href="<spring:url value="/register"/>" >Register</a>  | &nbsp;
<a href="<spring:url value="/logout"/>" >Logout</a>
</div>