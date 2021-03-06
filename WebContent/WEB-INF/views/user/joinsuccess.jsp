<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h2>회원가입성공</h2>
					
					<p class="form-box">
						회원가입을 축하합니다.
						<br><br>
						<a href="${pageContext.request.contextPath}/user?action=loginform">로그인하기</a>
					</p>
					
				</div><!-- /user -->
			</div><!-- /c_box -->
		</div><!-- /content -->
			
		<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div><!-- /container -->
</body>
</html>
