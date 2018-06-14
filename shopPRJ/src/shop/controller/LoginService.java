package shop.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shop.member.MemberDAO;

public class LoginService {

	String resultURI;
	
	void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String memberId = request.getParameter("id");
		String memberPwd = request.getParameter("pwd");
		
		MemberDAO memberDAO = new MemberDAO();
		int loginResult = memberDAO.login(memberId, memberPwd);
		
		//濡쒓렇�씤 �꽦怨�
		if(loginResult == 1) {
			resultURI = "/";
			HttpSession session = request.getSession();
			session.setAttribute("id", memberId);
			
		}else if(loginResult == 0 || loginResult == -1) {
			request.setAttribute("msg", "ddsdfsdf");
			resultURI = "/login.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(resultURI);
		rd.forward(request, response);
		
	}
}
