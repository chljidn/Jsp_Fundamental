<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String num = request.getParameter("num");
		String name = request.getParameter("name");
	
	%>
	id : <%=id %>, num : <%=num %>, name : <%=name %>
</body>
</html>