<%@page import="day09.SingletonTest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>ex01.jsp -SingletonTest</h1>
<hr>

<%
	Object ob1 = new Object();
	//The constructor SingletonTest() is not visible
	// 기본 생성자의 접근 제한자가 private 이므로 외부에서 생성자를 호출할수 없다.
	// SingletonTest ob2 = new SingletonTest();
	// Singleton을 만드는 이뉴는 중복되는 데이터를만들지 않기 위해(메모리 낭비를 막기위해)[램프예시]
	SingletonTest ob2 = SingletonTest.getInstance();
	
	Object ob3 = new Object();
	
	SingletonTest ob4 = SingletonTest.getInstance();
	
%>
<h3>ob1 : <%=ob1 %></h3>
<h3>ob1 : <%=ob2 %></h3>
<h3>ob1 : <%=ob3 %></h3>
<h3>ob1 : <%=ob4 %></h3>
<h3><%=ob1 == ob3 %></h3>
<h3><%=ob1 == ob4 %></h3>

<c:set var="ob5" value="${SingletonTest.getInstance() }" />

<h3>ob5 : ${ob5 }</h3>



</body>
</html>

<!-- 
객체지향 설계5대 원칙이라 부르는데 SRP(단일 책임 원칙), OCP(개방-폐쇄 원칙), LSP(리스코프 치환 원칙), ISP(인터페이스 분리 원칙), DIP(의존 역전 원칙)을 말하고 앞자를 따서 SOILD 원칙이라고 부른다.

1. 단일 책임 원칙 (Single Responsiblity Principle)
모든 클래스는 각각 하나의 책임만 가져야 한다. 클래스는 그 책임을 완전히 캡슐화해야 함을 말한다.

사칙연산 함수를 가지고 있는 계산 클래스가 있다고 치자. 이 상태의 계산 클래스는 오직 사칙연산 기능만을 책임진다. 이 클래스를 수정한다고 한다면 그 이유는 사직연산 함수와 관련된 문제일 뿐이다.
2. 개방-폐쇄 원칙 (Open Closed Principle)
확장에는 열려있고 수정에는 닫혀있는. 기존의 코드를 변경하지 않으면서( Closed), 기능을 추가할 수 있도록(Open) 설계가 되어야 한다는 원칙을 말한다.

캐릭터를 하나 생성한다고 할때, 각각의 캐릭터가 움직임이 다를 경우 움직임의 패턴 구현을 하위 클래스에 맡긴다면 캐릭터 클래스의 수정은 필요가없고(Closed) 움직임의 패턴만 재정의 하면 된다.(Open)
3. 리스코프 치환 원칙 (Liskov Substitution Principle)
자식 클래스는 언제나 자신의 부모 클래스를 대체할 수 있다는 원칙이다. 즉 부모 클래스가 들어갈 자리에 자식 클래스를 넣어도 계획대로 잘 작동해야 한다.

자식클래스는 부모 클래스의 책임을 무시하거나 재정의하지 않고 확장만 수행하도록 해야 LSP를 만족한다.

4. 인터페이스 분리 원칙 (Interface Segregation Principle)
한 클래스는 자신이 사용하지않는 인터페이스는 구현하지 말아야 한다. 하나의 일반적인 인터페이스보다 여러개의 구체적인 인터페이스가 낫다.

5. 의존 역전 원칙 (Dependency Inversion Principle)
의존 관계를 맺을 때 변화하기 쉬운 것 또는 자주 변화하는 것보다는 변화하기 어려운 것, 거의 변화가 없는 것에 의존하라는 것이다. 한마디로 구체적인 클래스보다 인터페이스나 추상 클래스와 관계를 맺으라는 것이다.
 -->