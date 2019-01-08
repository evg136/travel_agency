<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h1> ${greeting} </h1>
<p> ${tagline} </p>
</body>
</html>