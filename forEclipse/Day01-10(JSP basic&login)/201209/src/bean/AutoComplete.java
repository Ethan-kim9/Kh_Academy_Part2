package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AutoComplete {
	Connection conn;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	public AutoComplete() {
		conn = new Application().getConn();
	}
	
	@SuppressWarnings("finally")
	public String getData() {
		StringBuffer sb = new StringBuffer();
		
		try {
			String sql = "Select first_name from hr.employees";
			preparedStatement = conn.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery(); // CRUD
			sb.append("[");
			resultSet.next();
			sb.append("'" + resultSet.getString("first_name")+ "'");
			while(resultSet.next()) {
				sb.append(",'" + resultSet.getString("first_name") + "'");
			}
			sb.append("]");
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			String temp = sb.toString();
			temp = temp.replaceAll("'", "\"");
			return temp;
		}
	}
}
