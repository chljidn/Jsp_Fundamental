<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%
    	String email = request.getParameter("email");
    	String pwd = request.getParameter("pwd");
    	
    	CustomerDao dao = CustomerDao.getInstance();
    	CustomerDto dto = dao.getLogin(email, pwd);
    
    if(dto != null) {
    	//email, pwd ��ġ�ϴ� ���
    	//���ǿ� Ŭ���̾�Ʈ ������ �����Ѵ�.
    	session.setAttribute("login",dto);
    	response.sendRedirect("/notice/list/jsp?page=1");
    
 	 }else { 
 		 //email, pwd�� ��ġ���� ���� ���
 		 %>
 		 <script>
 		 alert("�̸��� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
 		 history.back(-1);
 		 </script>
	    <% 
 	 }
  		%>
