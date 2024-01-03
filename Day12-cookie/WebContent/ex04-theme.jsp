<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-theme.jsp</title>
</head>
<style>
	marquee{
		font-size: 20px;
		font-weight:bold;
		padding: 10px;
	}
	.white{
		background-color:white;
		color: black;
	}
	.dark{
		background-color:#aaa;
		color: #eee;
	}
	.black{
		background-color:black;
		color: white;
	}
	.warning{
		background-color:orangered;
		color: red;
	}
</style>
<body>

<h1>ex04-theme.jsp</h1>
<hr>

<h3>컬러 테마를 쿠키에 저장하고 적용하기</h3>

<c:set var="theme" value="${cookie.theme.value }" />

<form method="POST">
	<p>
		<select name="theme" required>
			<option value="">=== 색상 테마를 선택하세요 ===</option>
			<option ${theme == 'white' ? 'selected' : '' }value="white">화이트</option>
			<option ${theme == 'dark' ? 'selected' : '' }value="dark">다크</option>
			<option ${theme == 'black' ? 'selected' : '' }value="black">블랙</option>
			<option ${theme == 'warning' ? 'selected' : '' }value="warning">경고</option>
		</select>
		<input type="submit">
	</p>
</form>
<%
	String theme = request.getParameter("theme");
	if(theme != null){
	Cookie c = new Cookie("theme", theme);
	c.setMaxAge(600);
	response.addCookie(c);
	response.sendRedirect(request.getRequestURL().toString());
	// 현재 주소를 다이렉트 하도록 요청한다 (새로고침)
	}
%>

<fieldset>
	<legend>테스트 내용</legend>
	<marquee direction="up" scrollamount="2"  class="${cookie.theme.value }">
	<pre>
I'm super shy, super shy
But wait a minute while I
Make you mine, make you mine
떨리는 지금도
You're on my mind
All the time
I wanna tell you but I'm
Super shy, super shy
I'm super shy, super shy
But wait a minute while I
Make you mine, make you mine
떨리는 지금도
You're on my mind
All the time
I wanna tell you but I'm
Super shy, super shy

	</pre>
	</marquee>
</fieldset>


</body>
</html>