<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
${memberDAO }

<div>
	<jsp:useBean id="user" class="member.MemberDTO" />
	<jsp:setProperty property="*" name="user" />

	<c:set var="login" value="${memberDAO.login(user) }" scope="session" />
	
	<script>
		if('${login}' == ''){
			alert('로그인에 실패 했습니다')
		}else{
			alert('로그인에 성공 했습니다')
		}
		location.href = '${cpath}'
	</script>

</div>



</body>
</html>