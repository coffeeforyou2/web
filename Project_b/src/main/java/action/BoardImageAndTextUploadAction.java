package action;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import cgvBoard.MVBoardDAO;
import cgvBoard.MVBoardVO;
import controller.ActionForward;
import controller.IAction;
import vo.FileUploadVO;

public class BoardImageAndTextUploadAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String uploadPath = req.getRealPath("/upload");
		int size = 10*1024*1024;
		FileUploadVO mvo = new FileUploadVO();
		
		MultipartRequest multi = new MultipartRequest(req,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		//순서를 아래로 내려주세요
		String file1 = (String) files.nextElement();
		String filename1 = multi.getFilesystemName(file1);
		String origfilename1 = multi.getOriginalFileName(file1);
		mvo.setFilename1(filename1);
		ActionForward forward = new ActionForward();
		System.out.println(filename1);
		
		String title = multi.getParameter("mvTitle");
		String content = multi.getParameter("mvContent");
		String autor = multi.getParameter("mvId");
		String type = multi.getParameter("mvType");
		MVBoardDAO dao = new MVBoardDAO();
		MVBoardVO vo = new MVBoardVO();
		
		
		String file = filename1;
		vo.setAutor(autor);
		vo.setFile(file);
		vo.setType(type);
		vo.setTitle(title);
		vo.setContent(content);
		dao.insert(vo);
		forward.setPath("boardList.jsp");
		forward.setRedirect(false);
		ArrayList<MVBoardVO> data = dao.allOut(vo);
		req.setAttribute("data", data);
		return forward;
	}

}
