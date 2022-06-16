package com.koreait.app.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.mybatis.SqlMapConfig;


public class BoardDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public BoardDAO() {
		// autocommit
		sqlsession = factory.openSession(true);
	}

	public List<BoardDTO> getBoardList() {
		
		List<BoardDTO> boardList = sqlsession.selectList("Board.getBoardList");
		
		return boardList;
	}
}
