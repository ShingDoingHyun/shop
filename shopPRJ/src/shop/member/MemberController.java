package shop.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Controller
 */
@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String resultURI = "";
	RequestDispatcher rd ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String requestURI = request.getRequestURI();
		MemberDAO memberDAO = new MemberDAO();
		
		switch (requestURI) {
		case "/login.do":
			
			String memberId = request.getParameter("id");
			String memberPwd = request.getParameter("pwd");
			
			int loginResult = memberDAO.login(memberId, memberPwd);
			
			if(loginResult == 1) {
				resultURI = "/";
				HttpSession session = request.getSession();
				session.setAttribute("id", memberId);
				
			}else if(loginResult == 0 || loginResult == -1) {
				request.setAttribute("msg", "ddsdfsdf");
				resultURI = "/login.jsp";
			}
			
		case "/findId.do":
			
			String email = request.getParameter("email");
			String findIdResult = memberDAO.findID(email);
			
			break;

		default:
			break;
		}

		
		
		rd = request.getRequestDispatcher(resultURI);
		rd.forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
