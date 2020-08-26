<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
\${now} : ${now}
		<fmt:formatDate value="${now}"></fmt:formatDate>
date: <fmt:formatDate value="${now}" type="date"></fmt:formatDate>
time: <fmt:formatDate value="${now}" type="time"></fmt:formatDate>
both: <fmt:formatDate value="${now}" type="both"></fmt:formatDate>
default: <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate>
short: <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/>
medium: <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/>
long: <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/>
full: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="long"/>

pattern:"yyyy년 MM월 dd일 hh시 mm분 ss초";
<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/> 
</pre>
</body>
</html>