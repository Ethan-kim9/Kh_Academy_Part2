package aop_exam3;

import org.aspectj.lang.JoinPoint;

public class AfterAdvice {

	public Object log(JoinPoint point) {
				System.out.println("Aop:After를 통한 로그출력 :)");
		return null;
	}
}
