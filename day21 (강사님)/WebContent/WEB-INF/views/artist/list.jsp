<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<div class="frame">
	<h3>아티스트 목록</h3>
	<p><a href="${cpath }/artist/add"><button>추가</button></a></p>
	
	<table>
		<c:forEach var="dto" items="${list }">
		<tr>
			<td rowspan="2">
				<div class="img" style="background-image: url('${cpath}/artist_img/${dto.profileImg }')"></div>
			</td>
			<td><h3><a href="${cpath }/artist/view?id=${dto.id}">${dto.name }</a></h3></td>
			<td>${dto.company }</td>
			<td>${dto.country }</td>
		</tr>
		<tr>
			<td>${dto.member }</td>
			<td>${dto.debut }</td>
			<td>${dto.type }</td>
		</tr>
		</c:forEach>
	</table>
</div>



</body>
</html>