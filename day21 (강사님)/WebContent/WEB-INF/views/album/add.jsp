<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="frame">
	<form method="POST" enctype="multipart/form-data">
	<input type="hidden" name="artist_id" value="${param.artist_id }">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" placeholder="name"></td>
		</tr>	
		<tr>
			<td>유형</td>
			<td><input type="text" name="type" placeholder="type"></td>
		</tr>	
		<tr>
			<td>발매일</td>
			<td><input type="date" name="rDate"></td>
		</tr>	
		<tr>
			<td>재생시간</td>
			<td><input type="text" name="playTime" placeholder="mm:ss"></td>
		</tr>	
		<tr>
			<td>앨범 커버 이미지</td>
			<td><input type="file" name="coverImg"></td>
		</tr>	
	</table>
	<p><input type="submit"></p>
	</form>
</div>

</body>
</html>