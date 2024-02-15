package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;

public class PwSearchAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		String id = req.getParameter("id");
		String irum = req.getParameter("irum");
		vo.setMbId(id);
		vo.setMbIrum(irum);
		vo = dao.pwSearch(vo);
		if(vo!=null) {
			System.out.println("비밀번호찾기성공");
			forward.setPath("mbSearch.jsp");
			forward.setRedirect(false);
			req.setAttribute("vo", vo);
			req.setAttribute("data", "pwSearch");
		}else {
			alert(res, "찾으시는 아이디가 없거나 입력하신 이름이 틀립니다.");
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
