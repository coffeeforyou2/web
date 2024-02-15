package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ActionForward;
import controller.IAction;

public class LogoutAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("main.jsp");
		forward.setRedirect(true);
		HttpSession session = req.getSession(false); //세션생성 - false입력시 새로운 새션을 만들지않음 기존꺼활용
		session.invalidate(); //세션데이타삭제
		return forward;
	}

}
