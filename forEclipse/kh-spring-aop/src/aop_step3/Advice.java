package aop_step3;

import java.util.List;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class Advice implements MethodInterceptor{

	@Override
	public Object invoke(MethodInvocation invocation) throws Throwable {
		
		Object o = null;
		if(loginCheck()) {			
				o = invocation.proceed();		
		}
		//String rs = (String)invocation.proceed();
		//List<String> list = (List<String>)invocation.proceed();
		return o;
	}
	
	public boolean loginCheck() {
		// 로그인 여부를 판단하는 프로세스
		return true;
	}
}
