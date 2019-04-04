<%@page import="com.javaex.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserVo authvo = (UserVo) session.getAttribute("authUser");
%>
<div id="header">
	<h1>MySite</h1>
	<ul>
		<%
			if (authvo == null) {
		%>
		<!-- 로그인 전 -->
		<li><a href="/mysite/user?action=loginform">로그인</a></li>
		<li><a href="/mysite/user?action=joinform">회원가입</a></li>
		<%
			} else {
		%>
		<!-- 로그인 후 -->
		<li><a href="/mysite/user?action=modifyform">회원정보수정</a></li>
		<li><a href="/mysite/user?action=logout">로그아웃</a></li>
		<li><%=authvo.getName()%>님 안녕하세요^^;</li>
		<%
			}
		%>
	</ul>
</div>
<!-- /header -->