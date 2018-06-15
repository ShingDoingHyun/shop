package shop.member;

import java.util.ArrayList;
import shop.DAO;

public class MemberDAO extends DAO {

    //로그인
    public int login(String memberId, String memberPwd) {
        String SQL = "SELECT memberPwd From member WHERE  memberId = ?";
        try {
        	//conn = connect.getConnect();
        	conn = getConnect();
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
        } finally {
        	close();
        }
        return -2; // DB 오류
        
    }
    
    //아이디 찾기
    public MemberDTO findID(String email) {
    	
    	String SQL = "SELECT memberId FROM member WHERE memberEmail = ?";
    	ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
    	MemberDTO dto = new MemberDTO();
    	
    	 try {
         	conn = getConnect();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, email);
             rs = pstmt.executeQuery();
             if(rs.next()){
            	 
            	 dto.setMemberId(rs.getString(1));
            	 
             }
             
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
        	 close();
         }
    	 

    	 return dto;
    	
    }
    
    //아이디로 비밀번호 이메일 가져오기
    public MemberDTO getPwEmailById(String id){
    	
    	String SQL = "SELECT memberEmail, memberPwd From member WHERE  memberId = ?";
    	MemberDTO dto = new MemberDTO();
    	
    	 try {
         	 conn = getConnect();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();
             if(rs.next()){
            	 dto.setMemberEmail(rs.getString(1));
            	 dto.setMemberPwd(rs.getString(2));
             }else {
            	 dto = new MemberDTO();
             }
             
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
        	 close();
         }
    	 

    	 return dto;
    	
    	
    }
    
    
    
    
    
    
    
    
    
    
    
}