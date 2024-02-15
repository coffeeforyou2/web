package action;

import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.ActionForward;
import controller.IAction;
import vo.FileUploadVO;


public class FileuploadAction2 implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String uploadPath = req.getRealPath("/upload");
		int size = 10*1024*1024;
		FileUploadVO vo = new FileUploadVO();
		MultipartRequest multi = new MultipartRequest(req,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
		String name = multi.getParameter("name");
		String subject = multi.getParameter("subject");
		Enumeration files = multi.getFileNames();
		//순서를 아래로 내려주세요
		String file2 = (String) files.nextElement();
		String filename2 = multi.getFilesystemName(file2);
		String origfilename2 = multi.getOriginalFileName(file2);
		String file1 = (String) files.nextElement();
		String filename1 = multi.getFilesystemName(file1);
		String origfilename1 = multi.getOriginalFileName(file1);
		vo.setName(name);
		vo.setSubject(subject);
		vo.setFilename2(filename2);
		vo.setFilename1(filename1);
		vo.setOrigfilename1(origfilename1);
		vo.setOrigfilename2(origfilename2);
		System.out.println(filename1);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("fileUpload.jsp");
		forward.setRedirect(false);
		req.setAttribute("vo", vo);
		return forward;
	}

}
