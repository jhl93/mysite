<%@page import="com.javaex.vo.UserVo"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GuestBookVo> list = (List<GuestBookVo>) request.getAttribute("guestList");
	System.out.println("addList.jsp");
	System.out.println(list.toString());

	UserVo authvo = (UserVo) session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mysite/assets/css/mysite.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/guestbook.css" rel="stylesheet"
	type="text/css">
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
				<div id="guestbook">
					<h2>방명록</h2>

					<form id="addform" action="/mysite/gb" method="get">
						<input type="hidden" name="action" value="add">
						<table>
							<tr>
								<td>이름</td>
								<% if (authvo == null) { %>
								<td><input type="text" name="name"></td>
								<% } else { %>
								<td><input type="text" name="name"
									value=<%=authvo.getName()%>></td>
								<% } %>
								<td>비밀번호</td>
								<td><input type="password" name="password"></td>
							</tr>
							<tr>
								<td colspan=4><textarea name="content" cols="75" rows="8"
										form="addform"></textarea></td>
							</tr>
							<tr>
								<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
							</tr>
						</table>
					</form>

					<%
						for (GuestBookVo vo : list) {
					%>
					<table width=510 border=1>
						<tr>
							<td><%=vo.getNo()%></td>
							<td><%=vo.getName()%></td>
							<td><%=vo.getRegDate()%></td>
							<td><a href="/mysite/gb?action=dform&no=<%=vo.getNo()%>">삭제</a></td>
						</tr>
						<tr>
							<td colspan=4><%=vo.getContent()%></td>
						</tr>
					</table>
					<br>
					<%
						}
					%>
				</div>
				<!-- /guestbook -->
			</div>
			<!-- /c_box -->
		</div>
		<!-- /content -->

		<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /container -->
</body>
</html>

