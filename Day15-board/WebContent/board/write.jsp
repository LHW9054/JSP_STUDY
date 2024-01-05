<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<form method="POST" action="${cpath }/board/write-action.jsp">
	<p><input type="text" name="title" placeholder="제목" required autofocus></p>
	<p><input type="text" name="write" placeholder="???" required autofocus></p>
	<p><input type="text" name="content" placeholder="게시글" required></p>				
	<p><input type="submit" value="write"></p>	
</form>


</body>
</html>