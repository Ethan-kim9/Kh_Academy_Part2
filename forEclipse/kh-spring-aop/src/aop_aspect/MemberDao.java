package aop_aspect;

import java.util.List;

public class MemberDao implements Dao{

	
	public MemberDao() {
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
		return "MemberDao.update()";
	}

	@Override
	public String delete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String repl() {
		// TODO Auto-generated method stub
		return null;
	}
}
