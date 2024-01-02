<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-mypage.jsp</title>
</head>
<body>

<c:if test="${empty login }">
<%-- 	<c:redirect url="/ex02-index.jsp" /> --%>
	<script>
		alert('로그인 이후 사용할수 잇습니다')
		location.href = 'ex02-index.jsp'
	</script>
</c:if>

<h1>ex04-mypage.jsp</h1>
<hr>

<h3>마이페이지</h3>

<table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<td>ID</td>
		<td>${login.userid }</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${login.userpw }</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${login.username }</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${login.email }</td>
	</tr>
	<tr>
		<td>Birth</td>
		<td>${login.birth }</td>
	</tr>
</table>


<p>
	<a href="ex06-modify.jsp"><buttom>수정</buttom></a>
	<button id="withdraw">탈퇴</button>
</p>

<script>
	const withdraw = document.getElementById('withdraw')
	withdraw.onclick = function(){
		const flag = confirm('정말탈퇴하겠습니까?')
		if(flag){
			location.href = 'ex05-withdraw.jsp'
			// 탈퇴를 진행한 이후 세션이 남아잇는 로그인 정보를 제거하고 ex02-index.jsp로 이동시키기
		}
	}
</script>




</body>
</html>