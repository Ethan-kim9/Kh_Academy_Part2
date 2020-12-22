package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {
	Connection conn;
	PreparedStatement ps; 
	ResultSet rs; 
	
	public MemberDao() {
		conn = new Application().getConn();
	}
	
	@SuppressWarnings("finally")
	public boolean login(String mid, String pwd) {
		boolean b = false;
		try {
			String sql = "select count(mid) cnt from members where mid=? and pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1,  mid);
			ps.setString(2,  pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if(cnt >=1) {
					b=true;
				}
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return b;
		}
	}
	
	@SuppressWarnings("finally")
	public List<MemberVo> select(){
		List<MemberVo> list = new ArrayList<MemberVo>();
		try {
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			return list;
		}
	}

}
