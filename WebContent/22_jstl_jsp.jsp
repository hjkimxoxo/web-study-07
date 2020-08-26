<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="age" value="30" scope="page"></c:set>
나이:<c:out value="${age}">10</c:out><br>

<c:remove var="age" scope="page"></c:remove>
나이:<c:out value="${age}">10</c:out><br>

<c:catch var="errmsg">
예외 발생 전<br>
<%=1/0 %><br>
예외 발생 후<br>
</c:catch>

<c:out value="${errmsg}"></c:out>

<%=request.getParameter("name") %>
${param.name}
<br>

<c:catch var="e">
name 파라미터값 = <%=request.getParameter("name") %>
<c:if test="${param.name eq 'test}">
	${param.name}은 test입니다.
</c:if>

</c:catch>

<%-- <br>
<c:set var="n" value="${param.name}"></c:set>
<c:catch var="emsg">
	<c:if test="${param.name eq 'test'}">
	name 파라미터값 = ${param.name}
	</c:if>
</c:catch>
<p>
<c:if test="${emsg == null}">
	익셉션이 발생하였습니다:<bR> ${e}
	<c:redirect url="https://search.daum.net/search">
		<c:param name="w" value="blog"></c:param>
		<c:param name="q" value="공원"></c:param>
	</c:redirect>
</c:if> --%>
</body>
</html>