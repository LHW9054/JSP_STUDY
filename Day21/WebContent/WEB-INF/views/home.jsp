<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style>
	div.img{
		width: 150px;
		height: 150px;
		background-position: center;
		background-size: auto 100%;
		background-repeat:no-repeat;
		margin:auto;
	}
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	td, th{
		padding: 10px;
		border: 1px solid #dadada;
	}
</style>
</head>
<body>

<h1>home.jsp</h1>
<hr>

<a href="${cpath }/artist/list"><button>아티스트</button></a>

<header>
	<h1><a href="${cpath }/artist, album"></a></h1>
	<nav></nav>
</header>


</body>
</html>