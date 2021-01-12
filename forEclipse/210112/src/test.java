import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class test {
	public static void main(String[] args) {
		
	   String driver="oracle.jdbc.driver.OracleDriver";
	   String url="jdbc:oracle:thin:@localhost:1521:xe";
	   String id = "examuser";
	   String pw = "1234";
	   
	   Connection conn = null;
	   Statement stmt = null;
	   ResultSet rs = null;
	   

	   try {
	      Class.forName(driver);
	      conn=DriverManager.getConnection(url,id,pw);
	      stmt=conn.createStatement();
	      
	      String sql = "SELECT USER_ID FROM USER_TBL ORDER BY USER_NO ";
	      rs = stmt.executeQuery(sql);

	    	 while(rs.next()) {
	    		 String uid = rs.getString("USER_ID");
	    		 System.out.println("성공 : " + uid);
	    	 }
	      
	      rs.close();
	      stmt.close();
	      conn.close();
	         
	   } catch (Exception e) {
		   e.printStackTrace();
	   }
}

}