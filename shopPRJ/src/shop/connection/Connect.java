package shop.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Connect {
  // 
 
    public Connection getConnect(){
        try {
            String dbURL = "jdbc:mysql://localhost:3306/project";
            String dbID = "admin";
            String dbPassword = "1234";
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(dbURL, dbID, dbPassword);
            
        } catch (Exception e) {
        	System.out.println("����");
            e.printStackTrace();
        }
		return null;//Ŀ�ؼ� ����
        
    }

}
