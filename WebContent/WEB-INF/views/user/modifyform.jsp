<%@page import="com.javaex.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo uservo = (UserVo)request.getAttribute("uservo");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="/mysite/assets/css/mysite.css" rel="stylesheet" type="text/css">
	<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
	<title>Mysite</title>
</head>
<body>
	<div id="container">
		<jsp:include page="/WEB-INF/views/includes/header.jsp"></jsp:include>
		<!-- header -->

		<jsp:include page="/WEB-INF/views/includes/navigation.jsp"></jsp:include>
		<!-- /navigation -->
		
		<div id="content">
			<div id="c_box">
				<div id="user">
					<h2>로그인</h2>
					
					<form class="form-box" method="get" action="/mysite/user">
						<input type="hidden" name="action" value="modify" >
						
						<div class="form-group">
							<label class="block-label" for="name">이름</label>
							<input id="name" type="text" name="name" value="<%=uservo.getName() %>" >
						</div>
						
						<div class="form-group">
							<label class="block-label" for="email">이메일</label>
							<p><strong><%=uservo.getEmail() %></strong></p>
						</div>
						<div class="form-group">
							<label class="block-label" for="password">패스워드</label>
							<input id="password" type="password" name="password"  value="<%=uservo.getPassword() %>" >
						</div>
						<fieldset>
							<legend>성별</legend>
							<label>여</label> <input type="radio" name="gender" value="female" >
							<label>남</label> <input type="radio" name="gender" value="male" checked="checked">
						</fieldset>
						
						<input type="submit" value="수정완료">
						
					</form>
					
				</div><!-- /user -->
			</div><!-- /c_box -->
		</div><!-- /content -->
			
		<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div><!-- /container -->
</body>
</html>

