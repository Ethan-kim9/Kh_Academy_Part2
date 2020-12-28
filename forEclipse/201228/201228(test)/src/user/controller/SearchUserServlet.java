package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.model.dao.UserDao;
import user.model.vo.User;

@WebServlet(urlPatterns = "/searchUser.do")
public class SearchUserServlet extends HttpServlet {
	
	UserDao dao;
	
	public SearchUserServlet() {
		super(); // TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");
		dao = new UserDao();
		
		int userNo = Integer.parseInt(req.getParameter("userNO"));
		
		User user = dao.selectUser(userNo);
		if(job=="search") {
			dao.selectUser(userNo);
			req.setAttribute("USER",user);
		}
		if(user != null) {
			req.getRequestDispatcher("views/searchSuccess.jsp").forward(req, resp);
		}
		else {
			req.getRequestDispatcher("views/searchFail.jsp").forward(req, resp);
		}
	}
}
