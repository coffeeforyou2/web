package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;


public class MemberDeleteAction implements IAction
{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = null;
		HttpSession session = req.getSession(false);
		MemberVO vo = (MemberVO)session.getAttribute("data");
		MemberDAO dao = new MemberDAO();
		boolean result = dao.delete(vo);
		if(result) {
			session.invalidate(); //세션데이타삭제
			alert(res, "회원탈퇴가 완료되었습니다.");
		}
		
		return forward;
	}
	
	public static void alert(HttpServletResponse response, String msg) {
	    try {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.write("<script>alert('"+msg+"');location.href='main.jsp'</script>");
			out.flush();
			out.close();
	    } catch(Exception e) {
			e.printStackTrace();
	    }
	}

}
