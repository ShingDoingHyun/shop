package shop.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import shop.connection.Connect;

public class ProductDAO {

	Connect connect = new Connect(); // Ŀ�ؼ����� ��������
	private Connection conn = null; // DB�� �����ϴ� ��ü
	private PreparedStatement pstmt = null; //
	private ResultSet rs = null; // DB data�� ���� �� �ִ� ��ü

	public List getProductList(int page) {
		System.out.println(page);
		String SQL = "SELECT * From product limit " + page + ", 9 ";
		try {
			conn = connect.getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<ProductDTO> boardlist = new ArrayList<ProductDTO>(); // list�� dto��ü�� ���� �غ�

			while (rs.next()) {// �о�� �����͸�ŭ �ݺ�
				ProductDTO product = new ProductDTO(); // dto��ü�� ��� list�� �־��ش�.
				product.setProductName(rs.getString("productName"));
				product.setProductImage(rs.getString("productImage"));
				product.setProductPrice(rs.getInt("productPrice"));
				boardlist.add(product);
			}

			return boardlist;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // DB ����

	}

	public int productPageSize() {

		String SQL = "SELECT count(*) From product";
		try {
			conn = connect.getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
		
			int pageSize=0;
			while (rs.next()) {// �о�� �����͸�ŭ �ݺ�
				pageSize = rs.getInt(1);
			}
			return pageSize;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;

	}

}
