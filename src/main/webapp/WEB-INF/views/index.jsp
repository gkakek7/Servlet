<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="container-fluid"></main>
<h4>웰컴 페이지</h4>
<%
	MemberVO authMember=(MemberVO) session.getAttribute("authMember");
	if(authMember==null){
		%>
		<a href="<%=request.getContextPath() %>/login/loginForm.jsp">로그인</a>
		<a href="<%=request.getContextPath() %>/member/memberInsert.do">회원가입</a>
		<%
	}else{
		%>
		<a href="<%=request.getContextPath()%>/mypage"><%=authMember.getMemName() %></a>
		<%session.setAttribute("authMember", authMember); %>
		<form method="post" id="logoutForm" action="<%=request.getContextPath() %>/login/logOut.do"></form>
		<a href="javascript:;" data-log-out="#logoutForm">로그아웃</a>
		<%
	}
%>
</main>
<script src="<%=request.getContextPath() %>/resorces/js/app/index.js">\</script>
