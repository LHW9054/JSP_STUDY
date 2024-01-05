<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h1>로그인</h1>


//★
<form method="POST" action="${cpath }/member/login-action.jsp">
		<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
		<p><input type="password" name="userpw" placeholder="Password" required></p>				
		<p><input type="submit" value="login"></p>				
</form>


</body>
</html>