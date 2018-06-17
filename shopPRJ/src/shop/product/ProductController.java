package shop.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class productController
 */
@WebServlet(urlPatterns= {"/productList", "/productDetail"})
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
		// TODO Auto-generated constructor stub

	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String requestURI = request.getRequestURI();
		ProductDAO productDAO = new ProductDAO();

		switch (requestURI) {
		case "/productList"://상품목록
			int page = 0;//기본페이지일땐 0
			String category= ""; //카테고리 선택시
			String row_price="";//낮은가격
			String high_price="";//높은가격
			String keyword="";//검색 키워드
			String path = "/product/productPage.jsp?";
			if (request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
				if (page > 0)//페이지가 있으면 9를 곱해준다.
					page = page * 9;
			}
			if (request.getParameter("category") != null) {
				category = request.getParameter("category");
				path+= "category="+category+"&";
			}
			if(request.getParameter("row_price") != null  && request.getParameter("high_price") !=null) {
				row_price = request.getParameter("row_price"); 
				high_price = request.getParameter("high_price");
				path+= "row_price="+row_price+"&high_price="+high_price+"&";
			}
			if(request.getParameter("keyword") != null ) {
				keyword = request.getParameter("keyword"); 
				path+= "keyword="+keyword;
			}
			List productList = productDAO.getProductList(page, category, row_price, high_price, keyword);//출력할 페이지의 목록을 뽑는다.
			int pageSize = productDAO.productPageSize(page, category, row_price, high_price, keyword);//페이지의 크기를 뽑아낸다
			
			request.setAttribute("productList", productList);
			request.setAttribute("pageSize", pageSize);
			RequestDispatcher reqDis = request.getRequestDispatcher(path);
			reqDis.forward(request, response);
			break;
		case "/productDetail"://상품상세
			
			ProductDTO productDTO = new ProductDTO();
			int productNo = Integer.parseInt(request.getParameter("productNo")); 
			productDTO = productDAO.productDetail(productNo);
			
			request.setAttribute("productDTO", productDTO);
			RequestDispatcher reqDis1 = request.getRequestDispatcher("/detail.jsp");
			reqDis1.forward(request, response);
			break;
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}

}
