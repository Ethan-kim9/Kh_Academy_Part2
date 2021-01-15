package aop_step2;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Advice implements Log {
	Dao dao;
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss:SS");
	public Advice(Dao dao) {
		this.dao = dao;
	}

	@Override
	public String logOut() {
		return sdf.format(new Date());
	}
	
	public String beforeAdvice() {
		System.out.println("before로 실행되었습니다.");
		System.out.println(dao.delete());
		return logOut();
	}
	
	public String afterAdvice() {
		System.out.println("After로 실행되었습니다.");
		System.out.println(logOut());
		return dao.delete();
	}
	
	public String aroundAdvice() {
		System.out.println("around로 실행되었습니다.");
		System.out.println(logOut());
		
		
		System.out.println(dao.delete());
		return logOut();
	}
}
