<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>

<h1>가수목록</h1>
<hr>
<p><a href="${cpath }/artist/add"><button>추가</button></a></p>

<table>
	<c:forEach var="dto" items="${list }">
	<tr>
		<td rowspan="2">
			<div class="img" style="background-image: url('${cpath}/artist_img/${dto.profileImg }')"></div>
		</td>
		<td><h3><a href="${cpath }/artist/view?id=${dto.id}">${dto.name }</a></h3></td>
		<td>${dto.company }</td>
		<td>${dto.country }</td>
	</tr>
	<tr>
		<td>${dto.member }</td>
		<td>${dto.debut }</td>
		<td>${dto.type }</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>