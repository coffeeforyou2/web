package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.BoardImageAndTextUploadAction;
import action.BoardInsertAction;
import action.BoardInsideAction;
import action.BoardListAction;
import action.FileDownloadAction2;
import action.FileuploadAction2;
import action.IdSearchAction;
import action.LoginAction;
import action.LogoutAction;
import action.MainAction;
import action.MemberDeleteAction;
import action.MemberListAction;
import action.MemberUpdateAction;
import action.MovieListAction;
import action.MovieSearchAction;
import action.MyTicketListAction;
import action.PwSearchAction;
import action.SignupAction;
import action.TicketBuyAction;
import action.TicketDeleteAction;
import action.idCheckAction;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() { // 기본생성자 : 서블릿 컨테이너가 관리하기 위해 반드시 필요하다.
		// 객체의 생성 및 관리를 담당하는 것 == 컨테이너
		// 서블릿 컨테이너 == 톰캣

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 요청추출하기
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String command = uri.substring(cp.length());
		// System.out.println(uri);
		// System.out.println(cp);
		// System.out.println(command);
		ActionForward forward = null;
		// 2. 제어처리
		if (command.equals("/login.do")) { // 로그인
			System.out.println("로그:FrontController:로그인 요청");
			try {
				forward = new LoginAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // 로그인끝
		
		else if (command.equals("/logout.do")) {
			System.out.println("로그:FrontController:로그아웃 요청");
			try {
				forward = new LogoutAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/signup.do")) {
			System.out.println("로그:FrontController:회원가입 요청");
			try {
				forward = new SignupAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/idCheck.do")) {
			System.out.println("로그:FrontController:아이디 중복체크 요청");
			try {
				forward = new idCheckAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/mbUpdate.do")) {
			System.out.println("로그:FrontController:맴버정보 변경 요청");
			try {
				forward = new MemberUpdateAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/mbDelete.do")) {
			System.out.println("로그:FrontController:맴버정보 삭제 요청");
			try {
				forward = new MemberDeleteAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/main.do")) {
			System.out.println("로그:FrontController:메인페이지 요청");
			try {
				forward = new MainAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/mvList.do")) {
			System.out.println("로그:FrontController:영화목록 요청");
			try {
				forward = new MovieListAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/mbList.do")) {
			System.out.println("로그:FrontController:맴버목록 요청");
			try {
				forward = new MemberListAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/mvSearch.do")) {
			System.out.println("로그:FrontController:영화 검색 요청");
			try {
				forward = new MovieSearchAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/ticket.do")) {
			System.out.println("로그: 티켓을 구매요청");
			try {
				forward = new TicketBuyAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/myticketList.do")) {
			System.out.println("로그: 티켓 리스트요청");
			try {
				forward = new MyTicketListAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/ticketDel.do")) {
			System.out.println("로그: 티켓 삭제요청");
			try {
				forward = new TicketDeleteAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardinsert.do")) {
			System.out.println("로그: 게시판 등록요청");
			try {
				forward = new BoardInsertAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardlist.do")) {
			System.out.println("로그: 게시판 등록요청");
			try {
				forward = new BoardListAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardinside.do")) {
			System.out.println("로그: 게시판 등록요청");
			try {
				forward = new BoardInsideAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/pwSearch.do")) {
			System.out.println("로그: 비밀번호 찾기 요청");
			try {
				forward = new PwSearchAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/idSearch.do")) {
			System.out.println("로그: 아이디 찾기 요청");
			try {
				forward = new IdSearchAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/fileUpload.do")) {
			System.out.println("로그:FrontController:파일업로드 요청");
			try {
				forward = new FileuploadAction2().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/filedown2.do")) {
			System.out.println("로그:FrontController:파일다운2 요청");
			try {
				forward = new FileDownloadAction2().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardImgInsert.do")) {
			System.out.println("로그:FrontController: 파일이 들은 이미지와 게시글 등록을 요청");
			try {
				forward = new BoardImageAndTextUploadAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else {
			System.out.println("잘못된 요청!!!");
		}
		
		// 3. dispatcher이용해서 응답하기(VIEW이동)
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
		}
		
	} // actionDo끝

}
