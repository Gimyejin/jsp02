<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#a{text-align: center;}
	#ce{margin: auto;}
</style>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
	
	<h1>quiz02</h1>
	<form action="${contextPath}/views02.jsp">
		<table border="1">
			<caption><b>설문조사</b></caption>
			<tr>
				<td id="a">이름</td>
				<td><input type="text"name="name"></td>
			</tr>
			<tr>
				<td id="a">성별</td>
				<td><input type="radio"name="gender" value="남자">남자
				<input type="radio"name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<td id="a">좋아하는 계절</td>
				<td><input type="checkbox"name="season" value="봄">봄
				<input type="checkbox"name="season" value="여름">여름
				<input type="checkbox"name="season" value="가을">가을
				<input type="checkbox"name="season" value="겨울">겨울</td>
			</tr>
			<tr id="ce">
				<td><input type="submit"value="전송" ></td>
				<td><input type="reset" value="취소"></td>
		</table>
	</form>
</body>
</html>