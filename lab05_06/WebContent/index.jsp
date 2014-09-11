<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="table">
    <table border='1'>
        <TR><TD>暑假</TD><TD>寒假</TD></TR>
    </table>
</c:set>
	<c:out value="${table}" escapeXml="false"/>
 
 <!-- <c:out value="<table border='1'> <tr><td>暑假</td><td>寒假</td></tr></table>" />  <!-- 錯誤寫法 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL c:out練習</title>
</head>
<body> 
<h1>JSTL c:out練習</h1>
在這裡印出三列 table標籤<BR><BR>
<%--
     <table border='1'>
      <TR><TD>暑假</TD><TD>寒假</TD></TR>
      </table>
--%>      


     <%
        int n = (int)(Math.random() * 20);
        if ( n % 2 ==0 ) {
             request.setAttribute("RandomNumber", "" + n);
        }
     %>
     <P/>
    本次亂數為:<c:out value="${RandomNumber}" default="無"/><hr>
    
    <!-- 九九乘法表 -->
	<table border="1" style="border-collapse: collapse;">
		<c:forEach var="i" begin="1" end="9" step="1">
			<c:if test="${i % 2 == 0}">
				<c:set var="color" value="orange" />
			</c:if>
			<tr style="background-color:${color}">
				<c:forEach var="j" begin="1" end="9" step="1">
					<td>${i} x ${j} = ${ i*j }</td>
				</c:forEach>
			</tr>
			<c:set var="color" value="white" />
		</c:forEach>
	</table>
	<hr>
	<a href="TestServlet.do">請點擊我!</a>

</body>
</html>