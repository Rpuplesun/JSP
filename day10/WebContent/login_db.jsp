<%@page import="com.koreait.beans.MemberBean"%>
<%@page import="com.koreait.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDAO mdao = new MemberDAO();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		MemberBean member = mdao.login(userid, userpw);
		// MemberDAO에 login 메서드 만들어서
		// 결과값을 boolean return
		if(member != null){;
			session.setAttribute("session_id", member);
	%>
	
		<script>
			location.href="main_view.jsp";
		</script>
		
	<%} else { %>
		
		<script>
			alert("로그인 실패!");
			location.href="login_view.jsp";
		</script>
		
	<%} %>
</body>
</html>