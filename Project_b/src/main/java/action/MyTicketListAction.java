package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CGVTicket.CGVTicketDAO;
import CGVTicket.CGVTicketVO;
import controller.ActionForward;
import controller.IAction;

public class MyTicketListAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CGVTicketDAO dao = new CGVTicketDAO();
		CGVTicketVO vo = new CGVTicketVO();
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("myTicketList.jsp");
		forward.setRedirect(false);
		String id = req.getParameter("idCheck");
		vo.setMirum(id);
		
		ArrayList<CGVTicketVO> data = dao.myticket(vo);
		req.setAttribute("data", data);
		return forward;
	}

}
