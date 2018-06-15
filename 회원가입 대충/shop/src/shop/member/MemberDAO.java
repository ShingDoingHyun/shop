package shop.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import shop.connection.Connect;
import shop.product.ProductDTO;

public class MemberDAO {

	Connect connect = new Connect(); // Ŀ�ؼ����� ��������
	private Connection conn = null; // DB�� �����ϴ� ��ü
	private PreparedStatement pstmt = null; //
	private ResultSet rs = null; // DB data�� ���� �� �ִ� ��ü

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
