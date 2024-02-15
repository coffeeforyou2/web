package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;

public class MemberListAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("mbList.jsp");
		forward.setRedirect(false);
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		ArrayList<MemberVO> list = dao.selectAll(vo);
		req.setAttribute("list", list);
		return forward;
	}

}
