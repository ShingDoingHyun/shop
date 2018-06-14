package shop.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import shop.connection.Connect;

public class MemberDAO {

	
	Connect connect = new Connect();		//커넥션정보 가져오기
	private Connection conn=null;            // DB에 접근하는 객체
    private PreparedStatement pstmt=null;    // 
    private ResultSet rs=null;                // DB data를 담을 수 있는 객체
    
    //로그인
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
    
    //아이디 찾기
    public MemberDTO findID(String email) {
    	
    	String SQL = "SELECT memberId FROM member WHERE memberEmail = ?";
    	ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
    	MemberDTO dto = new MemberDTO();
    	
    	 try {
         	conn = connect.getConnect();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, email);
             rs = pstmt.executeQuery();
             if(rs.next()){
            	 
            	 dto.setMemberId(rs.getString(1));
            	 
             }
             
         } catch (Exception e) {
             e.printStackTrace();
         }
    	 

    	 return dto;
    	
    }
    
    //아이디와 이메일 일치여부 확인하기
    public int checkIDandEmail(String id, String email) {
    	
    	 String SQL = "SELECT memberEmail From member WHERE  memberId = ?";
         try {
         	conn = connect.getConnect();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();
             if(rs.next()){
                 if(rs.getString(1).equals(email))
                     return 1;    // 이메일 일치
                 else
                     return 0; // 이메일 불일치
             }
             return -1; // 해당 ID에 대한 이메일이 없음
             
         } catch (Exception e) {
             e.printStackTrace();
         }
         return -2; // DB 오류
    	
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}