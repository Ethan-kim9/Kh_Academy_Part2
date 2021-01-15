package aop_exam1;

public class Advice implements Log{
	Dao dao;
	
	
	
	public Advice(Dao dao) {
		super();
		this.dao = dao;
	}

	public Advice() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean loginCheck() {
			return true;
	}
 
	public void before() {
		if(loginCheck()) {
			System.out.println("로그인되었습니다.");
			dao.select();
		}else {
			System.out.println("로그인이 필요합니다.");
		}
	}
}
