package web_study_07_foreach;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MovieListServlet")
public class MovieListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] movieArr = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
		List<String> strList = Arrays.asList(movieArr);
		Map<String, Object> mapMovie = new HashMap<>();		
		mapMovie.put("id", "testid");
		mapMovie.put("name", "testname");
		mapMovie.put("movieArr", movieArr);
		
		String tokens = "red, green, blue";
		
		request.setAttribute("movieArr", movieArr);
		request.setAttribute("strList", strList);
		request.setAttribute("mapMovie", mapMovie);
		request.setAttribute("tokens", tokens);
		
		request.getRequestDispatcher("14_movieList.jsp").forward(request, response);
		
	}

}
