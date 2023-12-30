<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	#root {
		width: 800px;
		margin: 20px auto;
	}
	.item {
		display: flex;		
		align-items: center;
		border: 0.5px solid darkgrey;
		border-left: 0;
		border-right: 0;
		padding: 10px;
		margin-bottom: -1px;
	}
	.ranking {
		font-size: 1.1em;
		text-align: center;
		width: 100px;
	}
	div.ranking + div {
		width: 300px;
	}
	.artist, .album, .likeCount {
		color: grey;
		font-size: 0.9em;
	}
	.album {
		width: 300px;
	}
	.likeCount {
		width: 100px;
	}
</style>
</head>
<body>

<h1>ex04.jsp - 멜론 차트</h1>
<hr>

<details>
	<summary>SQL</summary>
	<fieldset>
	<pre>
drop table melon purge;
	
create table melon (
	ranking		number,
	title		varchar2(100),
	artist		varchar2(100),
	album		varchar2(100),
	likeCount	number
);
insert into melon values ( 1, 'Super Shy', 							'NewJeans', 			'NewJeans 2nd EP ''Get Up''', 125391);
insert into melon values ( 2, 'Seven (feat. Latto) - Clean Ver.', 	'정국', 					'Seven (feat. Latto) - Clean Ver.', 138888);
insert into melon values ( 3, 'ETA', 								'NewJeans', 			'NewJeans 2nd EP ''Get Up''', 73778);
insert into melon values ( 4, '퀸카 (Queencard)', 					'(여자)아이들', 			'I feel', 127720);
insert into melon values ( 5, '헤어지자 말해요', 							'박재정', 				'1집 Alone', 104210);
insert into melon values ( 6, 'I AM', 								'IVE (아이브)', 			'I`ve IVE', 190953);
insert into melon values ( 7, '이브, 프시케 그리고 푸른 수염의 아내', 			'LE SSERAFIM (르세라핌)', 	'UNFORGIVEN', 99513);
insert into melon values ( 8, 'Spicy', 								'aespa', 				'MY WORLD - The 3rd Mini Album', 117140);
insert into melon values ( 9, 'Steal The Show (From "엘리멘탈")', 		'Lauv', 				'Steal The Show (From "엘리멘탈")', 118203);
insert into melon values (10, 'New Jeans', 							'NewJeans', 			'NewJeans 2nd EP ''Get Up''', 62514);

commit;

select * from melon order by ranking;	
	</pre>
	</fieldset>
</details>

<div id="root">
	<jsp:useBean id="dao" class="ex04.MelonDAO" />
	<c:set var="list" value="${dao.selectList() }" />
	<c:forEach var="dto" items="${list }">
		<div class="item">
			<div class="ranking">${dto.ranking }</div>
			<div>
				<div class="title">${dto.title }</div>
				<div class="artist">${dto.artist }</div>
			</div>
			<div class="album">${dto.album }</div>
			<div class="likeCount">
				♡ <fmt:formatNumber>${dto.likeCount }</fmt:formatNumber>
			</div>
		</div>
	</c:forEach>	
</div>

</body>
</html>











