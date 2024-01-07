<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div>
	<c:set var="list" value="${boardDAO.selectList() }" />
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일시</th>
			</tr>
		</thead>
		<thead>
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>
					<a href="${cpath }/view.jsp?idx=${dto.idx }">${dto.title }</a>
				</td>
				<td>${dto.writer }</td>
				<td>
					<div>
						${dto.uploadfile }
						<form method="POST" enctype="multipart/form-data" action="ex01-action.jsp">
							<p><input type="file" name="uploadFile"></p>
							<p><input type="submit"></p>
						</form>
					</div>
				</td>
				<td>${dto.wdate }</td>
			</tr>
			</c:forEach>
		</thead>
	</table>
	<div>
		<div>
			<a href="${cpath }/write.jsp"><button>새글작성</button></a>		
		</div>
	</div>
</div>

</body>
</html>