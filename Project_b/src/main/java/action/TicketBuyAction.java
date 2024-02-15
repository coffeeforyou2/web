package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CGVTicket.CGVTicketDAO;
import CGVTicket.CGVTicketVO;

import controller.ActionForward;
import controller.IAction;

public class TicketBuyAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("ticketResult.jsp");
		forward.setRedirect(false);
		CGVTicketVO vo = new CGVTicketVO();
		CGVTicketDAO dao = new CGVTicketDAO();
		String CGVMv = req.getParameter("CGVMv");
		String CGVCenter = req.getParameter("CGVCenter");
		String CGVDay = req.getParameter("CGVDay");
		String CGVTime = req.getParameter("CGVTime");
		String CGVSit = req.getParameter("CGVSit");
		String CGVId = req.getParameter("CGVId");
		vo.setCenter(CGVCenter);
		vo.setDay(CGVDay);
		vo.setMirum(CGVId);
		vo.setMv(CGVMv);
		vo.setSit(CGVSit);
		vo.setTime(CGVTime);
		boolean s=dao.insert(vo);
		if(!s) {
			forward.setPath("ticketFail");
			forward.setRedirect(false);
		}
		return forward;
	}

}
