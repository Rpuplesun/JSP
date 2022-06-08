package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.koreait.beans.MemberBean;

public class MemberDAO {

	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	// age_db.jsp -> getAge
	public int getAge(String name) {
		int age = 0;
		String sql = "SELECT age FROM MEMBER WHERE name = ?";
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			rs = pstm.executeQuery();
			
			if( rs.next() ) {
				age = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return age;
	}
	
	public ArrayList<MemberBean> selectAll(){
		String sql = "select * from member";
		ArrayList<MemberBean> result = new ArrayList<MemberBean>();
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				MemberBean member = new MemberBean();
				member.setName(rs.getString(1));
				member.setAge(rs.getInt(2));
				result.add(member);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}





