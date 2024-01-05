<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div>
	<jsp:useBean id="user" class="board.BoardDTO" />
	<jsp:setProperty property="*" name="user" />

	<c:set var="write" value="${boardDAO.write(user) }" scope="session" />
	
	<script>
		if('${write}' == ''){
			alert('작 성 실 패')
		}else{
			alert('작 성 성 공')
		}
		location.href = '${cpath}'
	</script>	
	
</div>

</body>
</html>