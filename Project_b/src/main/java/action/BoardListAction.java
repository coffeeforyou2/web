package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgvBoard.MVBoardDAO;
import cgvBoard.MVBoardVO;
import controller.ActionForward;
import controller.IAction;

public class BoardListAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		MVBoardDAO dao = new MVBoardDAO();
		MVBoardVO vo = new MVBoardVO();
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("boardList.jsp");
		forward.setRedirect(false);
		
		ArrayList<MVBoardVO> data = dao.allOut(vo);
		req.setAttribute("data", data);
		return forward;
	}

}
