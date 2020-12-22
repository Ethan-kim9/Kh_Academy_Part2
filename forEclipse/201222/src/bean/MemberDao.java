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

	
	public int getTotListSize(String findStr) throws Exception{
		int totListSize = 0;
		String sql = "select count(mid) cnt from members where mid like ? or email like ? or phone like ? or address like ?";
		ps=conn.prepareStatement(sql);
		
		ps.setString(1, "%" + findStr + "%");
		ps.setString(2, "%" + findStr + "%");
		ps.setString(3, "%" + findStr + "%");
		ps.setString(4, "%" + findStr + "%");
		
		rs = ps.executeQuery();
		
		if(rs.next()) {
			totListSize =rs.getInt("cnt");
		}
		return totListSize;
	}
	
	@SuppressWarnings("finally")
	public List<MemberVo> select(Page page){
		List<MemberVo> list = new ArrayList<>();
		try {
			String f = page.getFindStr();
			page.setTotListSize(getTotListSize(f));
			page.pageCompute();
			
			String sql = "sql * from members ";
			ps=conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				vo.setMid(rs.getString("mid"));
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setName(rs.getString("name"));
				vo.setPhone(rs.getString("phone"));
				vo.setPhoto(rs.getString("photo"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setMdate(rs.getString("mdate"));
				list.add(vo);

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			return list;
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
