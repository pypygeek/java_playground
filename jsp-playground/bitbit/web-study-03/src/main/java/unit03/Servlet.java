package unit03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		String fruit = request.getParameter("fruit");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String ta = request.getParameter("ta");
		String check[] = request.getParameterValues("check");
		String coffee = request.getParameter("bean");
		String ageresult;
		
		out.print("<html><body><h1>");
		
		if (age >= 20) {
			ageresult = "adult";
		} else ageresult = "next time";
		
		out.print("<br>This is information<br>");
		out.print("id: " + id);
		out.print("<br>사이트 이용여부:"+ageresult+"입니다.<br>");
		out.print("<br>age:" + age);
		out.print("<br>좋아하는 과일은:"+fruit+"입니다.<br>");
		out.print("<br>비밀버호는:"+pw+"입니다.");
		out.print("<br>성별은"+gender+"입니다.");
		out.print("<br>남긴말:"+ta);
		out.print("<br>취미는");
		
		for(int i=0; i<check.length; i++) {
			out.print(check[i]+"  ");
		}
		
		out.print("<br>coffee:"+coffee);
		
		out.print("<br></h1><body></htm>");
		
		out.close();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
