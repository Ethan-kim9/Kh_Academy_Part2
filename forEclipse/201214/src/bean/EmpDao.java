package bean;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	
	public EmpDao() {
		connection = new Application().getConn();
	}
	
	@SuppressWarnings("finally")
	public List<EmpVo> search(String findString){
		List<EmpVo> list = new ArrayList<>();
		
		try {
			String sql  = "SELECT * FROM hr.employees "
						+ "WHERE first_name LIKE ? "
						+ "OR email LIKE ? "
						+ "OR Phone_number LIKE ? ";
			
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%" + findString + "%");
			preparedStatement.setString(2,"%" + findString + "%");
			preparedStatement.setString(3,"%" + findString + "%");
			
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				
				EmpVo vo = new EmpVo();
				vo.setEmployee_id(resultSet.getInt("employee_id"));
				vo.setFirst_name(resultSet.getString("first_name"));
				vo.setEmail(resultSet.getString("email"));
				vo.setPhone_number(resultSet.getString("phone_number"));
				vo.setSalary(resultSet.getDouble("salary"));
				
				list.add(vo);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try { 
				connection.close();			
			}catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}
}
