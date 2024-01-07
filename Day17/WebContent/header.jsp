<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board2.*, member.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<c:set var="boardDAO" value="${BoardDAO.getInstance() }" />
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day17 - board2</title>
</head>
<body>

<div>
	<h1><a href="${cpath }">게시판</a></h1>
		<nav>
			<c:if test="${empty login }">
			<li><a href="${cpath }/login.jsp">로그인</a></li>
			</c:if>
		</nav>
		<div>
			<c:if test="${not empty login }">
				<h1>(${login.userid })</h1>
				<li><a href="${cpath }/list.jsp">게시판</a></li>
				<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
			</c:if>
		</div>
</div>



</body>
</html>