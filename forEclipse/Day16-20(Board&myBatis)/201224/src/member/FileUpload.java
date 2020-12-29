package member;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bean.MemberVo;
import bean.Page;

public class FileUpload {
	public static final String saveDir ="C:\\Users\\Ethan Kim\\IdeaProjects\\Kh_Academy_Part2\\forEclipse\\201222\\WebContent\\upload\\";
	int maxSize = 1024*1024*100; // 100MB;
	String encoding = "utf-8";
	MultipartRequest mul;
	
	
	public FileUpload(HttpServletRequest req) {
		try {
			mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			// mul ��ü ������ ���ÿ� ���Ͼ��ε尡 �����
			String sysFile; // ������ ���ϸ�
			String oriFile; //���� ���ϸ�
			
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag =(String)en.nextElement();
				 sysFile = mul.getFilesystemName(tag); // ������ ���ϸ�
				 oriFile = mul.getOriginalFileName(tag); //���� ���ϸ�
				
				System.out.println("���� ���ϸ� : " + oriFile);
				System.out.println("���� ���ϸ� : " + sysFile);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public MemberVo getMember() {
			MemberVo vo = new MemberVo();
		vo.setAddress(mul.getParameter("address")); // vo.setAddress(request.getParameter("address"));
		vo.setEmail(mul.getParameter("email"));
		vo.setMdate(mul.getParameter("mdate"));
		vo.setMid(mul.getParameter("mid"));
		vo.setName(mul.getParameter("name"));
		vo.setPhone(mul.getParameter("phone"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setZipcode(mul.getParameter("zipcode"));
		return vo;
		
	}
	
	public Page getPage() {
		Page page = new Page();
		
		if(mul.getParameter("findStr") != null) {
			page.setFindStr(mul.getParameter("findStr"));
		}
		if(mul.getParameter("nowPage") != null && mul.getParameter("nowPage").equals("")) {
			int nowPage = Integer.parseInt(mul.getParameter("nowPage"));
			page.setNowPage(nowPage);
		}else {
			page.setNowPage(1);
		}
		return page;
	}

}
