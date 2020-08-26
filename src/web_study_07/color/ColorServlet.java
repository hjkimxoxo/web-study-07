package web_study_07.color;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ColorServlet")
public class ColorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		result(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		result(request, response);
	}
	
	protected void result(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int color = Integer.parseInt(request.getParameter("color"));
		
		String txt1 = null;
		String txt2 = null;
		
		if(color==1) {
			txt1 = "red";
			txt2 = "빨강";
		}else if(color==2) {
			txt1 = "green";
			txt2 = "초록";
		}else {
			txt1 = "blue";
			txt2 = "파랑";
		}
		
		request.setAttribute("txt1", txt1);
		request.setAttribute("txt2", txt2);
		
		 RequestDispatcher dp = request.getRequestDispatcher("12_colorSelect.jsp");
		 dp.forward(request, response);
		 
	}
	
	

}
