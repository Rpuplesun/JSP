<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		Connection conn = null;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "wjsp";
		String password = "wjsp";
		
		Class.forName(driver);
		System.out.println("jdbc driver 로딩 성공!");
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("오라클 연결 성공!");
		
// 		String sql = "SELECT SYSDATE FROM dual";
// 		PreparedStatement pstm = conn.prepareStatement(sql);
// 		// executeQuery : 쿼리문 수행
// 		ResultSet rs = pstm.executeQuery();
		
// 		if(rs.next()){
// 			out.print(rs.getDate(1));
// 		}

		String sql = "SELECT * FROM car";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		
		// 차번호, 브랜드, 색상, 가격
		while(rs.next()){
			out.print("차 번호 : " + rs.getString(1) + "<br>");
			out.print("차 브랜드 : " + rs.getString("BRAND") + "<br>");
			out.print("차 색상 : " + rs.getString(3) + "<br>");
			out.print("차 가격 : " + rs.getInt("PRICE") + "<br>");
		}
		
		out.print("<br><hr>");
		
		String carnum = "2";
		// sql = "SELECT * FROM CAR WHERE CARNUM = '" + carnum + "'";
		sql = "SELECT COLOR FROM CAR WHERE CARNUM = ?";
		pstm = conn.prepareStatement(sql);
		
		pstm.setString(1, carnum);
		rs = pstm.executeQuery();
		
		if(rs.next()){
			out.print("색상 : " + rs.getString(1));
		}
		
		// close는 반납의 개념
		rs.close();
		pstm.close();
		conn.close();
	
	%>
	
	
</body>
</html>














