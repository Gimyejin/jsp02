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
	<%=request.getContextPath()%>
	${pageContext.request.contextPath }
	<br>
	<!-- 경로를 길게쓰기 좀 그러니깐 변수로 만들어서 사용할수도 있다. -->
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
	<c:set var="contextPath1" value="<%=request.getContextPath()%>" />
	<br>path : ${contextPath}
	<br> path1 : ${contextPath1}
	<br>
	<hr>
	<a href="ex01_1.jsp">경로이동</a>
	<a href="${contextPath}/ex01_1.jsp">경로이동1</a>
	<a href="<%=request.getContextPath()%>/ex01_1.jsp">경로이동2</a>
	<hr>
	<form action="${contextPath }/ex01_1.jsp">
		<input type="checkbox" name="check" value="사과">사과주스
		<input type="checkbox" name="check" value="귤">귤주스
		<input type="checkbox" name="check" value="배">배주스
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>