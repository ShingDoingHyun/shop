package shop.member;

import java.io.IOException;
import java.util.ArrayList;

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
		
		String id = "";
		String pwd = "";
		String email = "";
		
		switch (requestURI) {
		case "/login.do":
			
			id = request.getParameter("id");
			pwd = request.getParameter("pwd");
			
			int loginResult = memberDAO.login(id, pwd);
			
			if(loginResult == 1) {
				resultURI = "/";
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				
			}else if(loginResult == 0 || loginResult == -1) {
				
				request.setAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다");
				resultURI = "/member/login.jsp";
			}
			
			break;
			
		case "/findId.do":
			
			email = request.getParameter("email");
			
			MemberDTO dto = memberDAO.findID(email);
			String result = dto.getMemberId();
			
			if(result!=null) {
				request.setAttribute("result", result);
				resultURI = "/member/findMyId.jsp";
			}else if (result == null) {
				request.setAttribute("result", "notFound");
				resultURI = "/member/findMyId.jsp";
			}
			
			break;
		
		case "/findPw.do":
			id = request.getParameter("id");
			email = request.getParameter("email");
			int chk = memberDAO.checkIDandEmail(id, email);
			
			if(chk == 1) {
				
				//이메일 발송
				
				
				
				request.setAttribute("msg", "가입하신 email로 비밀번호를 발송 하였습니다.");
				resultURI = "/member/findMyId.jsp";
				
			}else if(chk == 0 || chk == -1) {
				
				request.setAttribute("msg", "id 또는 email 주소가 틀렸습니다");
				resultURI = "/member/findMyId.jsp";
			}
			
			
			System.out.println("findPW!!!");
			
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
