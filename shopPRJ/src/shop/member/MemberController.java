package shop.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.mail.MessagingException;
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
			} else if(loginResult == -2) {
				request.setAttribute("msg", "DB검색 오류");
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
			
			dto = memberDAO.getPwEmailById(id);
			String getEmail = dto.getMemberEmail();
			
			if(getEmail == null) {
				request.setAttribute("msg", "id 또는 email 주소가 틀렸습니다");
				resultURI = "/member/findMyPw.jsp";
			}else if(email.equals(getEmail)) {
				//이메일 발송
				pwd = dto.getMemberPwd();
				
				GmailTest gmailTest = new GmailTest();

				try {
					gmailTest.sendEmail(email, pwd);
				} catch (MessagingException e) {
					e.printStackTrace();
				}

				
				request.setAttribute("msg", "가입하신 email로 비밀번호를 발송 하였습니다.");
				resultURI = "/member/findMyPw.jsp";
				
			}else if(!email.equals(getEmail)) {
				request.setAttribute("msg", "id 또는 email 주소가 틀렸습니다");
				resultURI = "/member/findMyPw.jsp";
			}
						
			break;
			
		case "/Join.do" :
			
			String memberId = request.getParameter("memberId");						// id
			String memberPwd = request.getParameter("memberPwd");					// pwd
			String memberName = request.getParameter("memberName");					// 이름
			String memberAge = request.getParameter("memberAge");	// 나이
			String memberGender = request.getParameter("memberGender");				// 성
			
			String localPhone = request.getParameter("localPhone");					// 전화-지역번호
			String phone2 = request.getParameter("phone2");							// 전화-앞자리
			String phone3 = request.getParameter("phone3");							// 전화-뒷자리
			String memberPhone = localPhone + "-" +phone2+"-"+phone3;
			
			String postcode = request.getParameter("postcode");						// 주소-우편번호
			String addr1 = request.getParameter("addr1");							// 주소-기본주소
			String addr2 = request.getParameter("addr2");							// 주소-나머지주소
			String memberAdress = "("+postcode+") "+addr1+" "+addr2;
			
			String email1 = request.getParameter("email1");					// 이메일-앞부분
			String email2 = request.getParameter("email2");					// 이메일-뒷부분
			String memberEmail = email1+"@"+email2;
			
			String idCheck = request.getParameter("confirmCheck");			// id중복체크를 한 경우
						
			// id중복검사가 되지 않은 경우
//			if(idCheck != "checked") {
//				request.setAttribute("msg", "id중복체크가 되지 않았소");
//				resultURI = "/member/join.jsp";
//			}
										
			// 메일 중복 체크
			if(memberDAO.checkMail(memberEmail)) {						// 메일주소가 중복될 경우 - 메시지와 함께 회원가입 창으로
				request.setAttribute("msg", "email 주소가 중복되었습니다.");
				resultURI = "/member/join.jsp"; 										
			}	
			else {															// 메일주소가 중복이 없는 경우 - 회원가입						
				System.out.println("메일없다.회원가입 가즈아~");		
		
				boolean checkJoin = memberDAO.join(memberId, memberPwd, memberName, memberAge, memberGender, memberPhone, memberAdress, memberEmail);
				
				if(checkJoin) {		// 회원가입 성공 : db에 회원정보가 정상적으로 성공될 경우
					resultURI = "/index.jsp"; 
					
				}
				else {				// db문제로 회원가입이 안될경우
					request.setAttribute("msg", "서버문제로 인하여 회원가입이 정상적으로 이뤄지지 않았구려..미안하오");
					resultURI = "/member/join.jsp"; 		
				}

			}
			
			break;
			
		case "/CheckId.do":												// 아이디 중복체크
						
			id = request.getParameter("id");							
				
			boolean checkID = memberDAO.confirmID(id);					///db에서 id가 있는지 검사
				
			if(checkID) {												// id가 있는경우
				request.setAttribute("msg","사용할수 없는 아이디다");
				request.setAttribute("check", "unchecked");
			}	
			else {														// id가 없는경우
				request.setAttribute("msg","사용할수 있는 아이디다");
				request.setAttribute("check", "checked");
			}
			
			request.setAttribute("reID", id);
			resultURI = "/member/confirm.jsp"; 
			
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
