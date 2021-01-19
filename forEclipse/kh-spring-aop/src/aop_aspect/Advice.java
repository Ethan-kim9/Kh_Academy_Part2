package aop_aspect;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class Advice{
	
	//before aspect
	public boolean loginCheck(JoinPoint point) {
		System.out.println("로그인 여부를 체크합니다. :)");
		
		/*실제 메서드가 실행되는 경우*/
		
		return true;
	}
	
	public Object around(ProceedingJoinPoint point) throws Throwable {
		System.out.println(log());
		point.proceed();
		System.out.println(log());
		return null;
	}
	
	public String log() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD(E) hh:mm:ss:SS");
		return (String)sdf.format(new Date());
	}
}
