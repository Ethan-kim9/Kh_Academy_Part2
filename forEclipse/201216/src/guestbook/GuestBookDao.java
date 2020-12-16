package guestbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class GuestBookDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public GuestBookDao() {
		conn = new Application().getConn();
	}
	
	@SuppressWarnings("finally")
	public List<GuestBookVo> select(String findStr){
		List<GuestBookVo> list = new ArrayList<>();
		
		
		try {
			String sql = "Select Serial, memberId, memberDate, document from guestbook where memberId like ? or document like ? "
					   + " order by serial desc ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr +"%");
			ps.setString(2, "%" + findStr +"%");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				GuestBookVo gBookVo = new GuestBookVo();
				
				gBookVo.setSerial(rs.getInt("Serial"));
				gBookVo.setMemberId(rs.getString("memberId"));
				gBookVo.setMemberDate(rs.getString("MemberDate"));
				gBookVo.setDocument(rs.getString("document"));
				
				list.add(gBookVo);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}
	
	@SuppressWarnings("finally")
	public String insert(GuestBookVo vo){
		String msg = "방명록이 성공적으로 작성되었습니다.";
		try {
			String sql = "INSERT into guestbook(Serial, MemberID,PassWord,membderDate,document) "
					   + " values(seq_guestbook.nextval, ?, ?, ?, sysdate )";
			
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, vo.getMemberId());
			ps.setString(2, vo.getPassWord());
			ps.setString(3, vo.getDocument());
			
			int rowCount = ps.executeUpdate();
			if(rowCount < 1) {
				msg = "방명록 입력중 오류가 생겼습니다.";
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return msg;
		}
	}
	
	/*
	update(){
		
	}
	delete(){
		
	}
	*/
}
