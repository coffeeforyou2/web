package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;



public class LoginAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPwd1");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setMbId(id);
		vo.setMbPw(pw);
		vo = dao.login(vo);
		HttpSession session = req.getSession(); //세션생성
		session.setAttribute("data", vo);
		if(session.getAttribute("data")==null) {
			alert(res, "아이디 또는 패스워드가 맞지 않습니다. 확인 후 입력해주세요.");
		} else {
			forward.setPath("main.jsp");
			forward.setRedirect(false);
			return forward;
		}
		return null;
	}
	
	public static void alert(HttpServletResponse response, String msg) {
	    try {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.write("<script>alert('"+msg+"');history.go(-1);</script>");
			out.flush();
			out.close();
	    } catch(Exception e) {
			e.printStackTrace();
	    }
	}

}
