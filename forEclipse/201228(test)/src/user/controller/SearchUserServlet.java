package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.model.dao.UserDao;

@WebServlet(urlPatterns = "/searchUser.do")
public class SearchUserServlet extends HttpServlet {
	
	String url = "searchUser?";
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
		RequestDispatcher rd = null;
		String job = req.getParameter("job");
		dao = new UserDao();
		int userNo = Integer.parseInt(req.getParameter("userNo"));
		if(job=="search") {
			dao.selectUser(userNo);
		}
		if(dao != null) {
			rd = req.getRequestDispatcher(url + "searchSuccess.jsp");	
			rd.forward(req, resp);
		}
		else {
			rd = req.getRequestDispatcher(url + "searchFail.jsp");
			rd.forward(req, resp);
		}
	}
}
