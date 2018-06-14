package shop.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import shop.connection.Connect;

public class MemberDAO {

//	private Connection conn;            // DB에 접근하는 객체
//    private PreparedStatement pstmt;    // 
//    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
//    
//    public MemberDAO(){
//    	super();
//        try {
//            String dbURL = "jdbc:mysql://localhost:3306/project";
//            String dbID = "admin";
//            String dbPassword = "1234";
//            Class.forName("com.mysql.jdbc.Driver");
//            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
//            
//        } catch (Exception e) {
//        	System.out.println("오류");
//            e.printStackTrace();
//        }
//        
//    }
	
	Connect connect = new Connect();		//커넥션정보 가져오기
	private Connection conn=null;            // DB에 접근하는 객체
    private PreparedStatement pstmt=null;    // 
    private ResultSet rs=null;                // DB data를 담을 수 있는 객체
    
    
    public int login(String memberId, String memberPwd) {
        String SQL = "SELECT memberPwd From member WHERE  memberId = ?";
        try {
        	conn = connect.getConnect();
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, memberId);
            rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(memberPwd))
                    return 1;    // 로그인 성공
                else
                    return 0; // 비밀번호 불일치
            }
            return -1; // ID가 없음
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // DB 오류
        
    }
}