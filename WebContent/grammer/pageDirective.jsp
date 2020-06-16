<%@page import="java.io.File"%>
<%@page import="java.util.Calendar"%>
<%@page language="java"%>
<%@page pageEncoding="utf-8"%>
<%@page session="false"%>
<%@page buffer="7kb"%>
<%@page autoFlush="false"%>
<%@page errorPage="error.jsp"%>
<%@page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>페이지 디렉티브</h1>
	<%
		Calendar c = Calendar.getInstance();
		File f = new File("");
		//String str = null;
		//int len = str.length(); //NullPointException
	%>
	${param.id }
</body>
</html>


