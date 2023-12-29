<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	div{
		box-sizing: border-box;
	}
	#root{
		border:2px solid black;
		width: fit-content;
	}
	div.item{
		width: fit-content;
		display: flex;
	}
	div.item > div{
		width: 120px;
		padding: 10px;
		border: 1px solid grey;
	}
	div.item > div:nth-child(2){
		width: 300px;
	}
	div.item > div:nth-child(3){
		width: 250px;
	}
	div.item > div:nth-child(4){
		width: 250px;
	}
	div.header{
		background-color: #dadada;
		font-weight: bold;
		border:1px solid grey;
	}
	div.item.white{
		background-color:  #dadada;
	}
	div.item.grey{
		background-color: #eee;
	}
</style>
</head>
<body>

<h1>ex04.jsp</h1>
<hr>
<jsp:useBean id="dao" class="ex04.MelonDAO" />

<c:set var="list" value="${dao.selectList() }" />

<div id="root">
	<div class="item header">
		<div>랭킹</div>
		<div>노래</div>
		<div>가수</div>
		<div>앨범</div>
		<div>좋아요</div>
	</div>
	<c:forEach var="dto" items="${list }" varStatus="st">
		<div class="item">
			<div>${dto.ranking }</div>
			<div>${dto.title }</div>
			<div>${dto.artist }</div>
			<div>${dto.album }</div>
			<div>
				<fmt:formatNumber>${dto.likecount }</fmt:formatNumber>
			</div>
		</div>
	</c:forEach>
</div>



</body>
</html>