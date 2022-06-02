<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="join.jsp" id="joinForm" method="post">
		아이디 <input type="text" name="userid" id="userid"><br> 
		비밀번호 <input type="password" name="userpw" id="userpw"><br> 
		이름 <input type="text"name="username" id="username"><br> 
		핸드폰 번호 <input type="text"name="userphone" id="userphone"><br> 
		<br>
		<!-- 		<input type="submit"> -->
		<input type="button" value="회원가입" onclick="sendit()">
	</form>

	<script>


		function sendit() {

			
			// validation check
			let frm = document.getElementById("joinForm");
			
			
			// 아이디 "" 체크
			let id = document.getElementById("userid");
			if (id.value == "") {
				alert("아이디를 입력해주세요.");
				id.focus();
				return false;
			}
			
			
			// 비밀번호 "" 체크
			// 비밀먼호 8자리 이상 체크
			let pw = document.getElementById("userpw");
			if (pw.value == "") {
				alert("비밀번호를 입력해주세요.");
				pw.focus();
				return false;
			}
			if (pw.value.length < 8) {
				alert("비밀번호는 8자리 이상이어야 합니다.");
				pw.focus();
				return false;
			}
			
			
			// 이름 "" 체크
			let name = frm.username;
			if (name.value == "") {
				alert("이름을 입력해주세요.");
				name.focus();
				return false;
			}
			
			
			// 휴대폰 "" 체크
			let pn = frm.userphone;
			if (pn.value == "") {
				alert("핸드폰 번호를 입력해주세요.")
				pn.focus();
				return false;
			}
			
			// form submit()
			frm.submit();
		}
	</script>
</body>
</html>
















