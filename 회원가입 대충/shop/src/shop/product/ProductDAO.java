package shop.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import shop.connection.Connect;

public class ProductDAO {

	Connect connect = new Connect(); // 커넥션정보 가져오기
	private Connection conn = null; // DB에 접근하는 객체
	private PreparedStatement pstmt = null; //
	private ResultSet rs = null; // DB data를 담을 수 있는 객체

	public List getProductList(int page) {
		System.out.println(page);
		String SQL = "SELECT * From product limit " + page + ", 3 ";
		try {
			conn = connect.getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<ProductDTO> boardlist = new ArrayList<ProductDTO>(); // list에 dto객체를 담을 준비

			while (rs.next()) {// 읽어온 데이터만큼 반복
				ProductDTO product = new ProductDTO(); // dto객체에 담아 list에 넣어준다.
				product.setProductName(rs.getString("productName"));
				product.setProductImage(rs.getString("productImage"));
				product.setProductPrice(rs.getInt("productPrice"));
				boardlist.add(product);
			}

			return boardlist;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // DB 오류

	}

	public int productPageSize() {

		String SQL = "SELECT count(*) From product";
		try {
			conn = connect.getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
		
			int pageSize=0;
			while (rs.next()) {// 읽어온 데이터만큼 반복
				pageSize = rs.getInt(1);
			}
			return pageSize;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;

	}

}
