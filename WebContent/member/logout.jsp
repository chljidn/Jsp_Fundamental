<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%
		session.invalidate(); //���ǰ�ü�� �����Ѵ�.
		//session.removeAttribute("login"); //���ǰ�ü�� �Ӽ��� ����.
		response.sendRedirect("/member/login.jsp");
  	%>
