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
	<h1>chkLogin.jsp</h1>
	<c:set var="dbId" value="1"/>
	<c:set var="dbPwd" value="1"/>
	<c:set var="inputId" value="${param.id }"/>
	<c:set var="inputPwd" value="${param.pwd }"/>
	
	<c:choose>
		<c:when test="${dbId eq inputId }">
			<c:choose>
				<c:when test="${dbPwd eq inputPwd }">
					로그인 성공
					<script type="text/javascript">
						alert('로그인 성공')
					</script>
				</c:when>
				<c:otherwise>
					비밀번호 틀림
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<b style="color:red;">존재하지 않은 아이디 입니다</b>
		</c:otherwise>
	</c:choose>
	
	<!-- ///////////////////////////////////////////////////////////////////////////////////////////////  -->
<%-- 	<c:choose>
		<c:when test="dbId == inputId and dbPwd eq inputPwd">
			<c:redirect url="main.jsp"/>
		</c:when>
		<c:otherwise>
			<c:redirect url="loginForm.jsp"/>
		</c:otherwise><!-- c:otherwise는 else라고 보면 됨 -->
	</c:choose> --%>
	
	<!-- ///////////////////////////////////////////////////////////////////////////////////////////////  -->
	<%-- <c:if test="${dbId == inputId and dbPwd eq inputPwd}"><!-- &&도 되고 and도 되고 -->
		인증성공
	</c:if>
	<c:if test="${dbId != inputId or dbPwd ne inputPwd}"><!-- ||도 되고 or도 되고 -->
		인증실패
		<c:redirect url="loginForm.jsp"/>
	</c:if> --%>
	<!-- ///////////////////////////////////////////////////////////////////////////////////////////////  -->
	<%-- <%
	String dbId = "1";
	String dbPwd = "1";
	String inputId = request.getParameter("id");
	String inputPwd = request.getParameter("pwd");
	if(dbId.equals(inputId) && dbPwd.equals(inputPwd)){
		out.print("인증 통과");
		//response.sendRedirect("main.jsp?id="+inputId);
		RequestDispatcher dispatchar = request.getRequestDispatcher("main.jsp");
		dispatchar.forward(request, response);
	}else{
		out.print("인증 실패");
		response.sendRedirect("loginForm.jsp");//바로 다음 페이지로 넘김
	}
	%> --%>
	

</body>
</html>