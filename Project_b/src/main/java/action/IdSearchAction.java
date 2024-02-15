package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;

public class IdSearchAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		String email = req.getParameter("email");
		vo.setMbEmail(email);
		vo = dao.idSearch(vo);
		if(vo!=null) {
			System.out.println("아이디찾기성공");
			forward.setPath("mbSearch.jsp");
			forward.setRedirect(false);
			req.setAttribute("vo", vo);
			req.setAttribute("data", "idSearch");
		}else {
			alert(res, "입력하신 이메일로 가입된 아이디가 없습니다.");
		}
		return forward;
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
