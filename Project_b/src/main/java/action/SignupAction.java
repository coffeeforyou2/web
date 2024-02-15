package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;

public class SignupAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("signinfo.jsp");
		forward.setRedirect(false);
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPwd1");
		String irum = req.getParameter("userIrum");
		String email = req.getParameter("email");
		String birthYear = req.getParameter("birthYear");
		vo.setMbId(id);
		vo.setMbPw(pw);
		vo.setMbIrum(irum);
		vo.setMbEmail(email);
		vo.setMbBirthYear(birthYear);
		dao.insert(vo);
		req.setAttribute("vo", vo);
		return forward;
	}

}
