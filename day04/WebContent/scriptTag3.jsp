<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.even{ color: blue; }
	.odd{ color: tomato; }
	
	tr:nth-child(even){ color: blue; }
	tr:nth-child(odd){ color: tomato; }
</style>
</head>
<body>

<!-- 가상선택자 사용하여 css 부여 -->

	<table border="1">
		
		<% for(int i=0; i<5; i++) { %>
			<tr>
				<% for(int j=0; j<i+1; j++){ %>
					<td><%=i+1 %>행 <%=j+1 %>열</td>
				<% } %>
				
				<% if((i+1) % 2 == 0){  } %>
			</tr>
		<% } %>
		
		<% for(int i=0; i<5; i++) { %>
			<tr>
				<% for(int j=0; j<5-i; j++){ %>
					<td><%=i+6 %>행 <%=j+1 %>열</td>
				<% } %>
			</tr>
		<% } %>
	</table>
	
<!-- ------------------------------------------------------------------------ -->	

<!-- 삼항연산자 사용하여 class 부여 -->

	<table border="1">
		<% for(int i = 1; i<=5; i++){ %>
			<tr class="<%=i%2 == 0? "even":"odd" %>">
				<% for(int j = 1; j<=i; j++) { %>
					<td><%=i %>행 <%=j %>열</td>
				<% } %>
			</tr>
		<% } %>
		
		<% for(int i=1; i<=5; i++) { %>
			<tr class="<%=(i+5)%2 == 0? "even":"odd" %>">
				<% for(int j=1; j<=6-i; j++){ %>
					<td><%=i+5 %>행 <%=j+1 %>열</td>
				<% } %>
			</tr>
		<% } %>
	</table>
	
	
	
	
</body>
</html>








