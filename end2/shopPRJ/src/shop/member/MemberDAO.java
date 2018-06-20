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
    // 메일 중복확인
    public boolean checkMail(String email) {
    	String SQL = "SELECT memberEmail From member WHERE memberEmail = ?";
    	 try {
         	 conn = getConnect();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, email);
             rs = pstmt.executeQuery();
             if(rs.next()){
            	// System.out.println("메일중복확인");
            	 return true;		// 메일 중복 있다
            	 
             }
             else {
            	 return false; 		// 메일중복 없다
             }
             
         } catch (Exception e) {
        	  System.out.println("에러");
        	  e.printStackTrace();
         } finally {
        	 close();
         }
    	 
    	
    	 return false;
       	
    }
    
    //id 중복 확인
    public boolean confirmID(String id) {
    	
		String SQL = "SELECT memberId From member WHERE memberId = ?";
		try {
			conn = getConnect();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// System.out.println("메일중복확인");
				return true; // id 중복 있다

			} else {
				return false; // id 중복 없다
			}

		} catch (Exception e) {
			System.out.println("에러");	//테스트구문
			e.printStackTrace();
		} finally {
			close();
		}
    	
		 return false;
		    	
    }
    
    //회원가입
    public boolean join(String memberId, String memberPwd, String memberName, String memberAge, String memberGender, String memberPhone, String memberAdress, String memberEmail){
    	
    	String SQL = "insert into member(memberId, memberPwd, memberName, memberAge, memberGender, memberPhone, memberAdress, memberEmail) values(?,?,?,?,?,?,?,?)"; 


		try {
			conn = getConnect();
			
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPwd);
			pstmt.setString(3, memberName);
			pstmt.setString(4, memberAge);
			pstmt.setString(5, memberGender);
			pstmt.setString(6, memberPhone);
			pstmt.setString(7, memberAdress);
			pstmt.setString(8, memberEmail);
			
			pstmt.executeUpdate();
								

		} catch (Exception e) {
			System.out.println("에러 .. 레코드 추가 실패");	//테스트구문
			e.printStackTrace();
			return false;
		} finally {
			close();
		}
		return true;
    	    	
    }
      
    
}