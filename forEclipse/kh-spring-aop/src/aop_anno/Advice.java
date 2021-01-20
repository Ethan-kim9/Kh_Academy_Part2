package aop_anno;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
@Aspect
public class Advice {
	@Before(	"	execution(* create(..)) ||"
			+ 	"	execution(* update(..)) ||"
			+ 	"	execution(* delete(..))	  ")
	public Object loginCheck(JoinPoint point) {
		// 로그인 여부를 판단하는 프로세스
		Tv t= (Tv)point.getTarget();
		System.out.println("beforeAdvice : " + t.name);
		t.name = "park";
		System.out.println("Login Check done access aproved");
		return t;
	}
	@After("execution(* create(..))")
	public Object log(JoinPoint point) {
		System.out.println("Aop:After를 통한 로그출력 :)");
return null;
}
}
