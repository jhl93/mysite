<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String result = request.getParameter("result");
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
						<input type="hidden" name="action" value="login" >
						
						<div class="form-group">
							<label class="block-label" for="email">이메일</label> 
							<input id="email" name="email" type="text" value="" > 
						</div>
						
						<div class="form-group">
							<label class="block-label">패스워드</label> 
							<input name="password" type="password" value="" >
						</div>
						<% if("fail".equals(result)) { %>
						<P>로그인이 실패했습니다.<br>다시입력해주세요</P><br>
						<% } %>
						<input type="submit" value="로그인">
					</form>
					
				</div><!-- /user -->
			</div><!-- /c_box -->
		</div><!-- /content -->
			
		<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div><!-- /container -->
</body>
</html>

