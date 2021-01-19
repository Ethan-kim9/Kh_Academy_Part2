package aop_aspect;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class Advice implements MethodInterceptor{

	@Override
	public Object invoke(MethodInvocation invocation) throws Throwable {
		
		Object obj = null;
		if(loginCheck()) {			
				obj = invocation.proceed(); //invocation.proceed 가 실행 후 내가원하는 dao가 실행될 수 있다.		
		}
		//String rs = (String)invocation.proceed();
		//List<String> list = (List<String>)invocation.proceed();
		return obj;
	}
	
	public boolean loginCheck() {
		// 로그인 여부를 판단하는 프로세스
		System.out.println("login Checking~~");
		return true;
	}
}
