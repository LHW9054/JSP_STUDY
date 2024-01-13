<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="frame">
	<h3>아티스트 정보</h3>
	<p>
		<a href="${cpath }/album/add?artist_id=${artist.id}"><button>앨범 추가</button></a>
	</p>
	<table>
		<tr>
			<td rowspan="4">
				<div class="img" style="background-image: url('${cpath}/artist_img/${artist.profileImg}')"></div>
			</td>
			<td>유형</td>
			<td>${artist.type }</td>
		</tr>
		<tr>
			<td>데뷔</td>
			<td>${artist.debut }</td>
		</tr>
		<tr>
			<td>국적</td>
			<td>${artist.country }</td>
		</tr>
		<tr>
			<td>소속</td>
			<td>${artist.company }</td>
		</tr>
	</table>
	
	<br><hr>
	
	<h3>앨범 정보 : ${albumList }</h3>
	
	<table>
		<c:forEach var="album" items="${albumList }">
		<tr>
			<td rowspan="2"> 
				<div class="img" style="background-image: url('${cpath}/album_img/${album.coverImg }')"></div>
			</td>
			<td>이름</td>
			<td>유형</td>
			<td>발매일자</td>
			<td>재생시간</td>
		</tr>
		<tr>
			<td>${album.name }</td>
			<td>${album.type }</td>
			<td>${album.rDate }</td>
			<td>${album.playTime }초</td>
		</tr>
		</c:forEach>
	</table>	
	
</div>
</body>
</html>












