<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>ex01.jsp</h1>
<hr>

<h3>session은 한명의 클라이언트에 대한 정보를 저장한다</h3>
<h3>request와는 달리, 서로다른 페이지로 이동해도 저장한 데이터(attribute)가 유지된다</h3>
<h3>서버에는 여러사용자에 대한 여러 세션이 존재하고, 이를 구분하기 위한 sessionID가 있다</h3>

<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>메서드</th>
			<th>용도</th>
			<th>결과</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>session.getID</th>
			<th>현재 세션의 id를 문자열로 반환한다</th>
			<th><%=session.getId() %></th>
		</tr>
		<tr>
			<th>session.getMaxInactiveInterval()</th>
			<th>세션의 최대 유지 시간을 반환한다.</th>
			<th><%=session.getMaxInactiveInterval() %></th>
		</tr>
		<tr>
			<th>session.invalidate()</th>
			<th>현제 세션을 폐기한다. (다음요청시에는 새로운 세션 생성, 로그아웃)</th>
			<th>void</th>
		</tr>
		<tr>
			<th>session.getLastAccessedTime()</th>
			<th>세션에 마지막으로 접근한 시간을 반환한다</th>
			<th><%=session.getLastAccessedTime() %></th>
		</tr>
		<tr>
			<th>session.getCreationTime()</th>
			<th>세션이 생성된 시간을 반환한다</th>
			<th><%=session.getCreationTime() %></th>
		</tr>
		<%@page import="java.util.Date" session="true" %>
		<%
			Date date = new Date();
			long now = date.getTime();
			
			long last = session.getLastAccessedTime();
			long diff = (now - last) / 1000;
			session.setMaxInactiveInterval(30);
		%>
	</tbody>
</table>
<h3>현재 세션 ID:<%=session.getId() %></h3>
<h3>현재 세션이 새로운 세션인가<%=session.isNew() %></h3>
<h3>세션 유지 시간 (초)<%=session.getMaxInactiveInterval() %></h3>
<h3>마지막 접근으로 부터 지연된 시간 (초) :<%=diff %></h3>

</body>
</html>