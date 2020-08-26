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

<c:forEach var="movie" items="${movieArr}">
	<c:out value="${movie}"></c:out>
</c:forEach>

<c:forEach var="movie" items="${movieArr}" varStatus="status"><br>
	${status.index+1 }번째 <c:out value="${movie}"></c:out>
</c:forEach>
<hr>

<c:forEach var="str" items="${strList}">
	<c:out value="${str}"></c:out><br>
</c:forEach>	
<hr>
<c:forEach var="map" items="${mapMovie}">
	key = ${map.key}, 
	value = <c:forEach var="movie" items="${map.value}">
			<c:out value="${movie}"></c:out>
			</c:forEach><br>
</c:forEach>	
<hr>

<c:forEach var="map" items="${mapMovie}">
<c:choose>
	<c:when test="${map.key eq 'movieArr'}">
		<c:forEach var="movie" items="${map.value}">
			${movie}
		</c:forEach>
	<c:out value="${movie}"></c:out>
	</c:when>
	<c:otherwise>
	<br>${map.key} = ${map.value}
	</c:otherwise>
</c:choose>
</c:forEach>
<hr>

<c:forEach var="str" items="${strList}" varStatus="status">
	<c:if test="${status.first}">
		<span style="color:red;">${str}</span>
	</c:if>
	<c:if test="${not status.first }">
	<c:out value="${str}"></c:out>
	</c:if>
</c:forEach>
<hr>

<c:forTokens var="color" items="red, green, blue" delims=",">
${color}
</c:forTokens>
<hr>

<c:forTokens var="color" items="${tokens}" delims=",">
${color}
</c:forTokens>
<hr>





	

</body>
</html>