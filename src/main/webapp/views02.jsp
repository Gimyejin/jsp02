<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>views02</h1>
	name: ${param.name }<br>
	gender: ${param.gender }<br>
	<c:forEach var="s" items="${paramValues.season }">
		season: ${s }<br>
	</c:forEach>
</body>
</html>