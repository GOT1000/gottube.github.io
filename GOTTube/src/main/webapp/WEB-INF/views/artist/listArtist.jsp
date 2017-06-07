<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background:#202020;
}
</style>
</head>
<body>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<table align="center">
	
	<c:forEach var="a" items="${list}">
	<tr>
		<td>
			<a href="detailArtist.do?ar_no=${a.ar_no}"><font color="white">${a.ar_name}</font></a>
		</td>
	</tr>

	
	</c:forEach>
	
</table>
</body>
</html>