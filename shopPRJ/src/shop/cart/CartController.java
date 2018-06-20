package shop.cart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.member.MemberDAO;

/**
 * Servlet implementation class CartController
 */
@WebServlet("*.cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String resultURI = "";
	RequestDispatcher rd ;
	
	
    public CartController() {
        super();      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		String requestURI = request.getRequestURI();
		CartDAO cartDAO = new CartDAO();
		ArrayList list=null;
		
		switch(requestURI) {
		
		case  "/getCart.cart" :
	
			resultURI = "/product/CartExercise.jsp";
			list = cartDAO.getCart();
			
			if(list == null) {			
				request.setAttribute("msg","자료가 존재하지 않습니다/");			
			}
			
			request.setAttribute("list", list);
						
			break;
		
		case "/addCart.cart":
			
			String productImg = request.getParameter("productImg");
			resultURI = "/product/CartExercise.jsp";
			System.out.println(productImg);
			
			list = cartDAO.addCart(productImg);
			
			request.setAttribute("msg",productImg);	
			request.setAttribute("list", list);
			
			break;
			
		case "/delete.cart":
			System.out.println("ddddd");
			resultURI = "/product/CartExercise.jsp";
			cartDAO.deleteCart();
			request.setAttribute("list", null);
			break;
			
			default:
				break;
					
		}
		
		rd = request.getRequestDispatcher(resultURI);
		rd.forward(request, response);
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
