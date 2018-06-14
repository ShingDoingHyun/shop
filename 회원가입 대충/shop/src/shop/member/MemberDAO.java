package shop.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import shop.connection.Connect;
import shop.product.ProductDTO;

public class MemberDAO {

	Connect connect = new Connect(); // 커넥션정보 가져오기
	private Connection conn = null; // DB에 접근하는 객체
	private PreparedStatement pstmt = null; //
	private ResultSet rs = null; // DB data를 담을 수 있는 객체

	public void addMember(MemberDTO memberDTO) {
		String id = memberDTO.getMemberId();
		String pwd = memberDTO.getMemberPwd();
		String SQL = "INSERT into member (memberId, memberPwd) values ('"+id+"','"+pwd+"')";
		
		try {
			conn = connect.getConnect();
			pstmt = conn.prepareStatement(SQL);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
