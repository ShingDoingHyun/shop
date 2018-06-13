package shop.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {
	
	protected Connection conn;            // DB에 접근하는 객체
    protected PreparedStatement pstmt;    // 
    protected ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
	
	
	public DAO() {
		try {
            String dbURL = "jdbc:mysql://localhost:3306/project";
            String dbID = "admin";
            String dbPassword = "1234";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
            
        } catch (Exception e) {
        	System.out.println("오류");
            e.printStackTrace();
        }
	}
}
