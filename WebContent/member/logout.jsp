<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%
		session.invalidate(); //技记按眉甫 昏力茄促.
		//session.removeAttribute("login"); //技记按眉狼 加己阑 昏力.
		response.sendRedirect("/member/login.jsp");
  	%>
