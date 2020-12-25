package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDao {
	Connection conn;  		//DB에 연결정보를 저장하는 클래스
	PreparedStatement ps; 	// SQL 문장
	ResultSet rs;
	
	public MemberDao() {
		conn = new Application().getConn();
	}
	
	@SuppressWarnings("finally")
	public boolean login(String mid, String pwd) {
		boolean b = false;
		try {
			String sql = "select count(MemberID) cnt from members where MemberID=? and Password=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1,  mid);
			ps.setString(2,  pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if(cnt >= 1) {
					b = true;
				}
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return b;
		}
	}

}