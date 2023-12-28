<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-if.jsp</title>
</head>
<body>

<h1>ex04-if.jsp</h1>
<hr>
<% request.setCharacterEncoding("UTF-8"); %>
<h3>request.getMethod() : ${pageContext.request.method }</h3>

<c:if test="${pageContext.request.method == 'GET' }">
	<form method="POST">
		<P><input type="test" name="name" placeholder="이름"></P>
		<P><input type="submit"></P>
	</form>
</c:if>

<c:if test="${pageContext.request.method == 'POST' }">
	<h3>안녕하세요 !! ${param.name }</h3>
	<a href="ex04-if.jsp"><buttom>다시</buttom></a>
</c:if>

</body>
</html>