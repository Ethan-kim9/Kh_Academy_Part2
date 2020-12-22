
package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/member.do") //member.do ���·� ���� ��û�� Servlet �� �м���
public class MemberServlet extends HttpServlet{
	String url="index.jsp?inc=./member/";;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job= req.getParameter("job");
		
		RequestDispatcher rd = null;
		
		switch(job) {
		case "select" :
			rd = req.getRequestDispatcher(url + "select.jsp");
			rd.forward(req, resp);
			break;
		}
	}
	
}
