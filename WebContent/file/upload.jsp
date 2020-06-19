<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getRealPath("/upload/files");
	
	MultipartRequest mr = null;
	try{
		mr = new MultipartRequest(
			request,
			path,//파일 경로
			10*1024*1024,//파일크기
			"utf-8",//인코딩 타입
			//파일이름이 중복됐을때 파일명 끝에 1,2,3순으로 이름 변경해주는 클래스
			new DefaultFileRenamePolicy()
		);
		//MultipartRequest 객체가 생성되면 파일 업로드 완료
	}catch(Exception e){
		e.printStackTrace();
	}
	
	String name = mr.getParameter("name");
	String fileName = mr.getFilesystemName("file");
	String uploadName = mr.getOriginalFileName("file");
%>

name : <%=name %><br>
file system name : <a href="/upload/files/<%=fileName %>"><%=fileName %></a><br>
file origin name : <%=uploadName %>





