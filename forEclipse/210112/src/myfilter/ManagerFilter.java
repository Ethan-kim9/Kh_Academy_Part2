package myfilter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sun.reflect.ReflectionFactory.GetReflectionFactoryAction;

/**
 * Servlet Filter implementation class ManagerFilter
 */
@WebFilter({"/member.kim" ,"/sale.park"})
public class ManagerFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ManagerFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("로그인 filter 종료");
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest)request).getSession();
		
		
		
		String url = ((HttpServletRequest)request).getRequestURL().toString();
		String mid = (String)session.getAttribute("mid");
		// TODO Auto-generated method stub
		// place your code here
		request.setCharacterEncoding("utf-8");
		// pass the request along the filter chain
		chain.doFilter(request, response);
		
		if(mid == null || !mid.equals("manager")) {
			request.getRequestDispatcher("./filter/login_fail.jsp").forward(request, response);
		}else {
			if(url.lastIndexOf("member")>=0) {
			request.getRequestDispatcher("./filter/member_select.jsp").forward(request, response);
		}else if(url.lastIndexOf("sale")>=0) {
			request.getRequestDispatcher("./filter/sale_select.jsp").forward(request, response);
			}
		}
	}
		

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("로그인 filter가 시작");
		// TODO Auto-generated method stub
	}

}
