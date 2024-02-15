package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;


public class MemberUpdateAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = null;
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPwd1");
		String irum = req.getParameter("userIrum");
		String email = req.getParameter("email");
		String birth = req.getParameter("birthYear");
		vo.setMbId(id);
		vo.setMbPw(pw);
		vo.setMbIrum(irum);
		vo.setMbEmail(email);
		vo.setMbBirthYear(birth);
		boolean result = dao.update(vo);
		if(result) {
			alert(res, "회원정보가 수정되었습니다.");
		}
		HttpSession session = req.getSession(false); //세션생성
		session.setAttribute("data", vo);
		return forward;
	}
	
	public static void alert(HttpServletResponse response, String msg) {
	    try {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.write("<script>alert('"+msg+"');location.href='mypage.jsp';</script>");
			out.flush();
			out.close();
	    } catch(Exception e) {
			e.printStackTrace();
	    }
	}

}
