package shop.cart;

import shop.DAO;
import shop.member.MemberDTO;
import shop.product.ProductDTO;

import java.util.ArrayList;


public class CartDAO extends DAO {
		
	
	public ArrayList<CartDTO> getCart() {
		
		ArrayList<CartDTO> list = new ArrayList<>();
	
		
		String SQL = "select * FROM shoppinglist";
    	
    	 try {
    		 conn = getConnect();
             pstmt = conn.prepareStatement(SQL);
             rs = pstmt.executeQuery();
             while(rs.next()){    
            	CartDTO dto = new CartDTO();
            	dto.setImg_src(rs.getString(2));
            	dto.setItem_name(rs.getString(3));
            	dto.setItem_amount(rs.getString(4));
            	dto.setItem_price(rs.getString(5));
            	list.add(dto);	
             }           
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
        	 close();
         }   	
    	 return list;		
	}
	
	public ArrayList<CartDTO> addCart(String img) {
		System.out.println(img);
		ArrayList<CartDTO> list = getCart() ;
		String SQL = "SELECT * FROM product WHERE productImage = '" + img + "'";

		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProductImage(rs.getString(4));
				dto.setProductName(rs.getString(2));
				// dto.setItem_amount(rs.getString(4));
				dto.setProductPrice(Integer.parseInt((rs.getString(6))));
				
				CartDTO tmp = new CartDTO();
				tmp.setImg_src("./image/"+dto.getProductImage()+"1.jpg");
				tmp.setItem_name(dto.getProductName());
				tmp.setItem_price(String.valueOf(dto.getProductPrice()));
				tmp.setItem_amount("0");
				addDB(tmp);
				list.add(tmp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	 
	public void addDB(CartDTO tmp) {
		String SQL = "INSERT INTO shoppinglist(img_src, item_name, item_amount, item_price) values(?,?,?,?);";
		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, tmp.getImg_src());
			pstmt.setString(2, tmp.getItem_name());
			pstmt.setInt(3, Integer.parseInt(tmp.getItem_amount()));
			pstmt.setInt(4, Integer.parseInt(tmp.getItem_price()));
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();

		}
	}
	
	public void deleteCart() {
		String SQL = "drop table shoppinglist";
		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();

		}
	}
}
