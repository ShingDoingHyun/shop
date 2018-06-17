package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs; 
	
	protected Connection getConnect(){

        try {
            String dbURL = "jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf8";
            String dbID = "admin";
            String dbPassword = "1234";
            Class.forName("com.mysql.jdbc.Driver");
            return  DriverManager.getConnection(dbURL, dbID, dbPassword);
            
        } catch (Exception e) {

            e.printStackTrace();
        }
        return null;
    }
	
	protected void close(AutoCloseable... acs) {
		try{
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			
		}


	}
    
    
}
