<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day21 - artist, album</title>
<style>
	div.img {
		width: 150px;
		height: 150px;
		background-position: center;
		background-size: auto 100%;
		background-repeat: no-repeat;
		margin: auto;
	}
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	td, th {
		padding: 10px;
		border: 1px solid #dadada;
	}
	header {
		border-bottom: 1px solid #dadada;
	}
	div.size300 {
		width: 300px;
		height: 300px;
		margin: auto;
	}
	table.artist-view {
		width: 900px;
		margin: auto;
	}
	.frame {
		width: 900px;
		margin: 20px auto;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">artist, album</a></h1>
	<nav>
		<ul>
			<li><a href="${cpath }/artist/list">아티스트</a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
		</ul>
	</nav>
</header>