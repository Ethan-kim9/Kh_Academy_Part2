package aop_aspect;

import java.util.List;

public class SalesDao implements Dao{


	public SalesDao() {
	}

	@Override
	public List<String> select() {
		return null;
	}

	@Override
	public String insert() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete() {
		return "SalesDao.delete()";
	}

	@Override
	public String repl() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

	
}
