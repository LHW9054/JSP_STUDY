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
<title>view.jsp</title>
</head>
<body>

<h1>앨범</h1>
<hr>

<div class="fram">
	<h3>아티스트 정보</h3>
	
	<table>
		<tr>
			<td rowspan="4">
				<div class="img" style="background-image: url('${cpath}/artist_img/${artist.profileImg }')"></div>
			</td>
			<td>유형</td>
			<td>${artist.type }</td>
		</tr>
		<tr>
			<td>데뷔</td>
			<td>${artist.debut }</td>
		</tr>
		<tr>
			<td>국적</td>
			<td>${artist.country }</td>
		</tr>
		<tr>
			<td>소속</td>
			<td>${artist.company }</td>
		</tr>
	</table>
	
</div>
<br>
<hr>

</body>
</html>











