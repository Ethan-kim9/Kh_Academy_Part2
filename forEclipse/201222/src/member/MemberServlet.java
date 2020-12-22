package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MemberDao;
import bean.MemberVo;
import bean.Page;

@WebServlet(urlPatterns = "/member.do")
public class MemberServlet extends HttpServlet{
	String url = "index.jsp?inc=./member/";
	MemberDao dao;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");
		
		int nowPage = 1;
		String findStr = "";
		
		RequestDispatcher rd = null;
		dao = new MemberDao();
		
		switch(job) {
		case "select":
			if(req.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(req.getParameter("nowPage"));
			}
			if(req.getParameter("findStr") != null) {
				findStr = req.getParameter("findStr");
			}
			
			Page page = new Page();
			page.setNowPage(nowPage);
			page.setFindStr(findStr);
			List<MemberVo> list = dao.select(page);
			
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher(url+"select.jsp");
			rd.forward(req, resp);
			break;
		}
	
	
	}

}
