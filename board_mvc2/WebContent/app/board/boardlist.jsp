<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style>
   a:visited{
      color:#ce93d8;
      text-decoration:none;
   }
   a:hover{
      color:#ce93d8;
      text-decoration:none;
      font-weight:bold;
   }
   a:link {
      color:#ce93d8;
      text-decoration:none;
   }
   table{
      margin: 0 auto;
   }
</style>
</head>
<body>
	<c:set var="boardList" value="${requestScope.boardList }"/>
	<div>
		<table style="width: 900px; border: 0px;">
			<tr align="center" valign="middle">
				<td><h3>MVC게시판</h3></td>
			</tr>
			<tr align="right" valign="middle">
				<td>글 개수 : xx개</td>
			</tr>
		</table>
		
		<table border="1" style="border-collapse: collapse; border-spacing: 0; width: 900px">
			<tr align="center" valign="middle">
				<th width="8%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="17%">날짜</th>
				<th width="10%">조회수</th>
			</tr>
			<!-- 게시글 작성 : 글이 있는 경우 -->
			<c:forEach var="board" items="${boardList }">
				<tr align="center" valign="middle">
					<td height="23px;">${board.boardnum }</td>
					<td height="23px;">${board.boardtitle }</td>
					<td height="23px;">${board.username }</td>
					<td height="23px;">${board.boarddate }</td>
					<td height="23px;">${board.boardreadcount }</td>
				</tr>
			</c:forEach>
			
			<!-- 게시글 작성 : 글이 없는 경우 -->
		</table>
		<br>
		<!-- 페이징 처리 -->
		<table style="border: 0px; width: 900px">
			<tr align="right" valign="middle">
				<td><a href="">[글쓰기]</a></td>
			</tr>
		</table>
	</div>
</body>
</html>