package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {
	Connection conn; //database�� ���� ����
	PreparedStatement ps; // ���ڿ��� �Ǿ� �ִ� sql������ sql ���๮��
	ResultSet rs; // select���� ������
	
	public MemberDao() {
		conn = new Application().getConn();
	}
	
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
		String sql = "select count(mid) cnt from members where mid like ? or email like ? or phone like ? or address like ? ";
		ps = conn.prepareStatement(sql);
		ps.setString(1,  "%" + findStr + "%");
		ps.setString(2,  "%" + findStr + "%");
		ps.setString(3,  "%" + findStr + "%");
		ps.setString(4,  "%" + findStr + "%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
		
	}
	
	
	
	public List<MemberVo> select(Page page){
		List<MemberVo> list = new ArrayList<MemberVo>();
		try {
			//�Ѱܹ��� �˻�� ����Ͽ� totListSize���� ���ؾ���.
			String f = page.getFindStr();
			page.setTotListSize(getTotListSize(f));
			page.pageCompute();
			
			String sql = " select * from ("
			           + "   select rownum no, m.* from ("
			           + "     select * from members "
					   + "     where mid like ? or email like ? or phone like ? or address like ? "
					   + "     order by name asc) m   "
					   + " ) where no between ? and ? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1,  "%" + page.getFindStr() + "%");
			ps.setString(2,  "%" + page.getFindStr() + "%");
			ps.setString(3,  "%" + page.getFindStr() + "%");
			ps.setString(4,  "%" + page.getFindStr() + "%");			
			ps.setInt(5, page.getStartNo());
			ps.setInt(6, page.getEndNo());
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
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return list;
		}
	}
	
	public String insert(MemberVo vo){
		String msg = "ȸ�� ������ ���������� ����Ǿ����ϴ�.";
		try {
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
		}
	}
	public String update(MemberVo vo){
		String msg = "ȸ�� ������ ���������� �����Ǿ����ϴ�.";
		try {
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
		}
	}

	public String delete(MemberVo vo){
		String msg = "ȸ�� ������ ���������� �����Ǿ����ϴ�.";
		try {
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
		}
	}
	public MemberVo view(String mid){
		MemberVo vo = new MemberVo();
		try {
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return vo;
		}
	}

	

}