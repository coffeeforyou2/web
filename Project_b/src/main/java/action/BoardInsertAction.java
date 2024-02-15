package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgvBoard.MVBoardDAO;
import cgvBoard.MVBoardVO;
import controller.ActionForward;
import controller.IAction;

public class BoardInsertAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("boardlist.do");
		forward.setRedirect(false);
		MVBoardDAO dao = new MVBoardDAO();
		MVBoardVO vo = new MVBoardVO();
		
		String title = req.getParameter("mvTitle");
		String content = req.getParameter("mvContent");
		String autor = req.getParameter("mvId");
		String type = req.getParameter("mvType");
		String file = "#";
		vo.setAutor(autor);
		vo.setFile(file);
		vo.setType(type);
		vo.setTitle(title);
		vo.setContent(content);
		dao.insert(vo);
		System.out.println(vo);
		
		
		return forward;
	}

}
