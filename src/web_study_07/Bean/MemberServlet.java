package web_study_07.Bean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		result(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		result(request, response);
	}

	private void result(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean member = new MemberBean("전수빈","pinksubin");
		request.setAttribute("member", member);
		
		RequestDispatcher dp = request.getRequestDispatcher("09_el.jsp");
		dp.forward(request, response);
		
		if("color".equals("1")) {
			System.out.println("빨강");
		}
		
	}
}
