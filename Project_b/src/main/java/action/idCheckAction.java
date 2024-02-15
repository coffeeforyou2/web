package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;
import dao.MemberDAO;
import vo.MemberVO;

public class idCheckAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		
		ActionForward forward = null;
		
		String id = req.getParameter("userId");
		System.out.println("들어온 id : " + id);
		
		MemberVO vo = new MemberVO();
		MemberDAO dao = new MemberDAO();
		vo.setMbId(id);
		int flag = dao.m_idCheck(vo);
		System.out.println(flag);
		if(flag==1) {
			System.out.println("중복");
		}else {
			System.out.println("가능");
		}
		PrintWriter out = res.getWriter();
		out.print(flag+"");
		return forward;
	}

}
