<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>아티스트 추가</h3>

<form method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" placeholder="name"></td>
		</tr>
		<tr>
			<td>소속사</td>
			<td><input type="text" name="company" placeholder="company"></td>
		</tr>
		<tr>
			<td>국가</td>
			<td><input type="text" name="country" placeholder="country"></td>
		</tr>
		<tr>
			<td>멤버</td>
			<td><input type="text" name="member" placeholder="member"></td>
		</tr>
		<tr>
			<td>데뷔날짜</td>
			<td><input type="date" name="debut" placeholder="debut"></td>
		</tr>
		<tr>
			<td>유형</td>
			<td><input type="text" name="type" placeholder="type"></td>
		</tr>
		<tr>
			<td>대표 이미지</td>
			<td><input type="file" name="profileImg" placeholder="profileImg" value="default.jpg"></td>
		</tr>
	</table>
	<p><input type="submit"></p>
</form>

</body>
</html>