<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CoffeeData</title>

<style>
table {
	border-collapse: collapse;
	width: 300px;
}
</style>

</head>
<body>
	<table border="1">
		<tr style="background-color: silver">
			<th>代號</th>
			<th>咖啡</th>
			<th>價格</th>
			<th>折扣</th>
		</tr>
		<c:forEach var="aCoffee" items="${COFFEE_LIST}" varStatus="vs">
			<c:set var="color" value="#C4E1FF" />
			<c:if test="${ (vs.count) % 2 == 0 }">
				<c:set var="color" value="#84C1FF" />
			</c:if>

			<tr style="background-color:${color}">
				<td>${aCoffee.coffeeName}</td>
				<td>${aCoffee.coffeeCode}</td>
				<td>${aCoffee.price}</td>
				<td>${aCoffee.discount}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<a href="index.jsp">回上頁</a>
</body>
</html>