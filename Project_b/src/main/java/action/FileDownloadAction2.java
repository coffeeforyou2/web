package action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;
import controller.IAction;


public class FileDownloadAction2 implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//계시글  첨부파일 다운로드 처리용 컨트롤러
		
		req.setCharacterEncoding("utf-8");
		
		//프로젝트 내에 파일이 저장된 폴더의 경로정보를 얻음.
		
		String readFolder = req.getSession().getServletContext().getRealPath("/upload");
		
		//String - 110 -boolean- 110 - =request.getParameter("file");
		String originalFileName =req.getParameter("file");
		
		//클라이언트로 내보낼 출력 스트림  생성
		
		ServletOutputStream downOut = res.getOutputStream();
		
		//File downFile = new File(readFolder + "/" + - 111 -oolean- 111 -);
		File downFile = new File(readFolder + "/" + originalFileName);
		
		res.setContentType("text/plain; charset=utf-8");
		//한글 파일명 인코딩 처리함.
		
		//response.addHeader("Content-Disposition","attachment; filename=\"" + new String(originalFileName.getBytes("uft-8"),"ISO-8859-1") +"\"");
		//response.addHeader("Content-Disposition","attachment; filename=\"" + new String(originalFileName.getBytes("utf-8"),"ISO-8859-1") +"\"");
		
		res.setHeader("Cache-Control", "no-cache");
		res.addHeader("Content-Disposition", "attachment; filename=" + originalFileName);
		
		res.setContentLength((int)downFile.length());
		
		BufferedInputStream bin = new BufferedInputStream(new FileInputStream(downFile));
		
		int read= -1;
		while((read = bin.read()) !=-1) {
			downOut.write(read);
			downOut.flush();
		}
		 downOut.close();
		 bin.close();
		ActionForward forward = null;
		return forward;
	}

}
