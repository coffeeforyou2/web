package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgvBoard.MVBoardDAO;
import cgvBoard.MVBoardVO;
import controller.ActionForward;
import controller.IAction;

public class BoardInsideAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		MVBoardDAO dao = new MVBoardDAO();
		MVBoardVO vo = new MVBoardVO();
		forward.setPath("boardinside.jsp");
		forward.setRedirect(false);
		
		int no = Integer.parseInt(req.getParameter("no"));
		System.out.println(no);
		vo.setNo(no);
		ArrayList<MVBoardVO> data = dao.oneOut(vo);
		req.setAttribute("data", data);
		return forward;
	}

}
