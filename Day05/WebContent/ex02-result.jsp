<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-result.jsp</title>
</head>
<body>


<h1>ex03-result.jsp</h1>
<hr>

<fieldset>
	<legend><strong>EL Tag</strong></legend>
	<h3>name :${ob.name }</h3>
	<h3>age :${ob.age }</h3>
</fieldset>
<br>

<p><a href="ex02.jsp"><button>다시입력</button></a></p>
</body>
</html>