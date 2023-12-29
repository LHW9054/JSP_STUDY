<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
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

<h1>ex03.jsp</h1>
<hr>

<h3>dao 객체를 생성</h3>
<jsp:useBean id="dao" class="ex03.MovieDAO" />

<h3>dao의 메서드를 호출하여 리스트 받기</h3>

<c:set var="list" value="${dao.selectList() }" />

<h3>JSTL forEach로 출력</h3>
<div id="root">
		<div class="item header">
			<div>순위</div>
			<div>제목</div>
			<div>개봉일자</div>
			<div>예매율</div>
			<div>예매관객수</div>
			<div>누적관객수</div>
		</div>
	<c:forEach var="dto" items="${list}" varStatus="st">
		<div class="item ${st.index % 2 == 0 ? 'white' : 'grey' }">
			<div>${dto.movie_rank }</div>
			<div>${dto.title }</div>
			<div>${dto.openningDate }</div>
			<div>${dto.reserveRate }</div>
			<div>
				<fmt:formatNumber value="${dto.reserveCount }" />명
			</div>
			<div>
				<fmt:formatNumber value="${dto.watchCount }" />명
			</div>
		</div>
	</c:forEach>
</div>


</body>
</html>