<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>

<style>
	table{
		border: 2px solid black;
		border-collapse: collapes;
	}
	td, th{
		padding : 10px;
		border: 1px solid grey;
	}
	thead{
		background-color: #eee;
	}
</style>

</head>
<body>

<h1>ex04.jsp</h1>
<hr>

<ul>
	<li>attribute에 접근하여 값을 출력한다</li>
	<li>다운캐스팅 없이 메서드를 호출할수 있다</li>
	<li>산술연산, 비교연산, 논리연산이 가능하다</li>
	<li>empty, not empty 등을 통해 null체크 수행도 가능하다</li>
	<li>대상이 없으면 아무 값도 출력하지 않는다(null은 출력안함)</li>
	<li>\${param.name } 형식으로 파라미터의 값을 출력할수 있다</li>
	<li>내장 객체 pageContext에 접근 가능하다</li>
</ul>

<fieldset>
	<legend>문자열 뎃셈은 불가능</legend>
	<h3>${not empty param.name ? param.name : '없음' }</h3>
</fieldset>

<fieldset>
	<legend>문자열 덧셈은 불가능</legend>
	<h3>${'1104' + '100' }</h3>
</fieldset>

<table>
	<thead>
		<tr>
			<th>연산자</th>
			<th>예시</th>
			<th>결과</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>+</th>
			<th>\${12 + 23 }</th>
			<th>${12 + 23 }</th>
		</tr>
		<tr>
			<th>-</th>
			<th>\${12 - 23 }</th>
			<th>${12 - 23 }</th>
		</tr>
		<tr>
			<th>*</th>
			<th>/&{12 * 23 }</th>
			<th>&{12 * 23 }</th>
		</tr>
		<tr>
			<th>/, div</th>
			<th>\${10 / 3 }</th>
			<th>${10 / 3 }</th>
		</tr>
		<tr>
			<th>%, mod</th>
			<th>\${10 % 3 }</th>
			<th>${10 mod 3 }</th>
		</tr>
		<tr>
			<th>>, gt</th>
			<th>\${10 > 3 }</th>
			<th>${10 gt 3 }</th>
		</tr>
		<tr>
			<th><, lt</th>
			<th>\${10 < 3 }</th>
			<th>${10 lt 3 }</th>
		</tr>
		<tr>
			<th>>=, ge</th>
			<th>\${10 >= 3 }</th>
			<th>${10 ge 3 }</th>
		</tr>
		<tr>
			<th><=, le</th>
			<th>\${10 <= 3 }</th>
			<th>${10 le 3 }</th>
		</tr>
		<tr>
			<th>==, eq</th>
			<th>\${10 == 3 }</th>
			<th>${10 eq 3 }</th>
		</tr>
		<tr>
			<th>!=, ne</th>
			<th>\${10 != 3 }</th>
			<th>${10 != 3 }</th>
		</tr>
		<tr>
			<th>&&, and</th>
			<th>\${10 % 2 == 0 && 10 > 2 }</th>
			<th>${10 % 2 == 0 && 10 > 2 }</th>
		</tr>
		<tr>
			<th>||, or</th>
			<th>\${10 % 2 == 0 || 10 < 2 }</th>
			<th>${10 % 2 == 0 or 10 < 2 }</th>
		</tr>
		<tr>
			<th>!, not</th>
			<th>\${!(10 < 2)}</th>
			<th>${not(10 < 2)}</th>
		</tr>
		<%@ page import="java.util.*" %>
		<%
			String[] arr = {"이효리", "옥주현", "성유리", "이진"};
			pageContext.setAttribute("arr", arr);
			
			List<String> list = Arrays.asList(arr);
			pageContext.setAttribute("list", list);
			
			HashMap<String, String> map = new HashMap<>();
			map.put("위", "조조");
			map.put("촉", "유비");
			map.put("오", "손권");
			map.put("title", "Romance of Three Kindoms");
			pageContext.setAttribute("map", map);
		%>
		<tr>
			<td>array[]</td>
			<td>\${arr[0] }</td>
			<td>${arr[0] }</td>
		</tr>
		<tr>
			<td>list[]</td>
			<td>\${list[1] }</td>
			<td>${list[1] }</td>
		</tr>
		<tr>
			<td>map[]</td>
			<td>\${map['위'] }</td>
			<td>${map['위'] }</td>
		</tr>
		<tr>
			<td>map.</td>
			<td>\${map.title }</td>
			<td>${map.title}</td>
		</tr>
		<tr>
			<td>param.name <br>(request.getParameter("name"))</td>
			<td>\${param.name}</td>
			<td>${param.name}</td>
		</tr>
		<tr>
			<td>param.age <br>(request.getParameter("age")</td>
			<td>\${param.age}</td>
			<td>${param.age}</td>
		</tr>
		<tr>
			<td>header.</td>
			<td>\${header.host }</td>
			<td>${header.host }</td>
		</tr>
		<tr>
			<td>header[]</td>
			<td>\${header['user-agent'] }</td>
			<td>${header['user-agent'] }</td>
		</tr>
		<tr>
			<td>pageContext</td>
			<td>\${pageContext }</td>
			<td>${pageContext }</td>
		</tr>
		<tr>
			<td>request</td>
			<td>\${pageContext.request }</td>
			<td>${pageContext.request }</td>
		</tr>
		<tr>
			<td>session</td>
			<td>\${pageContext.session }</td>
			<td>${pageContext.session }</td>
		</tr>
		<tr>
			<td>application</td>
			<td>\${pageContext.servletContext }</td>
			<td>${pageContext.servletContext }</td>
		</tr>
		
		
	</tbody>
</table>














</body>
</html>