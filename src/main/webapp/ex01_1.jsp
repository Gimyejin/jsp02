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
	ex01_1.jsp<br>
	forEach문<br>
	<c:forEach var="var" items="${paramValues.check }"><!-- var가 String s고 items는 test같은 것임 -->
		${var }
	</c:forEach>
	<hr>
	<%
		String checkbox=request.getParameter("check");
		//여러개의 값을 가져올시
		String[] values=request.getParameterValues("check");
		if(values != null){
			for(int i=0;i<values.length;i++){
				out.print(values[i]+" ");
			}
			out.print("<hr>");
			for(String i : values){out.print(i);}
		}
		out.print("<hr>");
		String[] test ={"안녕","하세","요"};
		for(String s : test){out.print(s);}
		out.print("<hr>");
		int[] arr={111,222,333};
		for(int i : arr){out.print(i);}
	%>
	<%=checkbox %><hr>
	<%-- <%=values[0] %>	<%=values[1] %>	<%=values[2] %> --%>
</body>
</html>