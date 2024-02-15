package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MovieDAO;
import vo.MovieVO;

public class MovieSearchAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("mvSearch.jsp");
		forward.setRedirect(false);
		MovieDAO dao = new MovieDAO();
		MovieVO vo = new MovieVO();
		String keyword = req.getParameter("keyword");
		vo.setMvTitle(keyword);
		ArrayList<MovieVO> list = dao.selectSearch(vo);
		if(list!=null) {
			req.setAttribute("list", list);
		}
		return forward;
	}

}
