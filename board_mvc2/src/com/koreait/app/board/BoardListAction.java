package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;

public class BoardListAction implements Action {
	
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
			ActionForward forward = new ActionForward();
			BoardDAO bdao = new BoardDAO();
			
			req.setAttribute("boardList", bdao.getBoardList());
			forward.setRedirect(false);
			forward.setPath(req.getContextPath() + "/app/board/boardlist.jsp");
			
			return forward;
		}
}
