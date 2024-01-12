<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>

<h1>add.jsp</h1>
<hr>

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
		<td>나라</td>
		<td><input type="text" name="country" placeholder="country"></td>
	</tr>
	<tr>
		<td>멤버</td>
		<td><input type="text" name="member" placeholder="member"></td>
	</tr>
	<tr>
		<td>데뷔날짜</td>
		<td><input type="text" name="debut" placeholder="debut"></td>
	</tr>
	<tr>
		<td>타입</td>
		<td><input type="text" name="type" placeholder="type"></td>
	</tr>
	</table>
	<p><input type="file" name="profileImg" placeholder="profileImg"></p>
	<p><input type="submit"></p>
</form>


</body>
</html>