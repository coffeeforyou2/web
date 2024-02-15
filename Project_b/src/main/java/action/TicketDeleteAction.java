package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CGVTicket.CGVTicketDAO;
import CGVTicket.CGVTicketVO;
import controller.ActionForward;
import controller.IAction;

public class TicketDeleteAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("myTicketList.jsp");
		forward.setRedirect(false);
		CGVTicketVO vo = new CGVTicketVO();
		CGVTicketDAO dao = new CGVTicketDAO();
		
		String CGVCenter = req.getParameter("CGVCenter");
		String CGVSit = req.getParameter("CGVSit");
		String CGVId = req.getParameter("CGVId");
		System.out.println(CGVId);
		vo.setCenter(CGVCenter);
		vo.setMirum(CGVId);
		vo.setSit(CGVSit);
		boolean s=dao.delete(vo);
		if(!s) {
			forward.setPath("myTicketList.jsp");
			forward.setRedirect(false);
			System.out.println("삭제실패");
		}
		System.out.println("삭제성공");
		
		vo.setMirum(CGVId);
		ArrayList<CGVTicketVO> data = dao.myticket(vo);
		req.setAttribute("data", data);
		
		return forward;
	}

}
