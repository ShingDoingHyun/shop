package shop.product;


import java.util.ArrayList;
import java.util.List;

import shop.DAO;

public class ProductDAO extends DAO {

	//상품목록 뽑아내기
	public List getProductList(int page, String category, String row_price, String high_price, String keyword) {

		String SQL = "SELECT * From product where 1 ";
				
		if(!category.equals("")) {//카테고리 선택시
			SQL+= " and productType='"+category+"' ";
		}
		
		if(!row_price.equals("") && !high_price.equals("")) {//가격비교
			int row = Integer.parseInt(row_price);
			int high = Integer.parseInt(high_price);
			SQL+= " and productPrice BETWEEN "+row+" AND "+high+" ";
		}
		
		if(!keyword.equals("")) {	//이름으로 검색조건
			SQL+= " and productName like '%"+keyword+"%' ";
		}
				
		SQL += " limit " + page + ", 9 ";//page부터 9개 목록 뽑아내기

		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<ProductDTO> boardlist = new ArrayList<ProductDTO>(); // list�� dto��ü�� ���� �غ�

			while (rs.next()) {// �о�� �����͸�ŭ �ݺ�
				ProductDTO product = new ProductDTO(); // dto��ü�� ��� list�� �־��ش�.
				product.setProductNo(rs.getInt("productNo"));
				product.setProductName(rs.getString("productName"));
				product.setProductImage(rs.getString("productImage"));
				product.setProductPrice(rs.getInt("productPrice"));
				boardlist.add(product);
			}

			return boardlist;

		} catch (Exception e) {			
			e.printStackTrace();
			return null; // DB ����
		}finally{
			close();
		}
		

	}

	//상품 페이징 뽑아내기
	public int productPageSize(int page, String category, String row_price, String high_price, String keyword) {

		String SQL = "SELECT count(*) From product where 1 ";
		
		if(!category.equals("")) {//카테고리 선택시
			SQL+= " and productType='"+category+"' ";
		}
		
		if(!row_price.equals("") && !high_price.equals("")) {//가격비교
			int row = Integer.parseInt(row_price);
			int high = Integer.parseInt(high_price);
			SQL+= " and productPrice BETWEEN "+row+" AND "+high+" ";
		}
		
		if(!keyword.equals("")) {
			SQL+= " and productName like '%"+keyword+"%' ";
		}
		

		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
		
			int pageSize=0;
			while (rs.next()) {// �о�� �����͸�ŭ �ݺ�
				pageSize = rs.getInt(1);
			}
			return pageSize;

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return 0;

	}
	
	public ProductDTO productDetail(int productNo) {

		String SQL = "SELECT * From product where productNo = '"+productNo+"'";	//선택한 상품 상세

		
		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			ProductDTO productDTO = new ProductDTO();
			int pageSize=0;
			while (rs.next()) {// �о�� �����͸�ŭ �ݺ�
				
				productDTO.setProductNo(rs.getInt("productNo"));
				productDTO.setProductName(rs.getString("productName"));
				productDTO.setProductImage(rs.getString("productImage"));
				productDTO.setProductPrice(rs.getInt("productPrice"));
				productDTO.setProductDetail(rs.getString("productDetail"));
			}
			return productDTO;

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close();
		}
		
		return null;
		
	}

}
