package aop_exam2;

import java.util.Date;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class Advice implements MethodInterceptor{

	@Override
	public Object invoke(MethodInvocation invocation) throws Throwable {
		Object obj = null;
		System.out.println("Start TimeChecking~~");
		System.out.println(timeCheck());
		obj= invocation.proceed(); // point, joinpoint, Weaving Type = around Type
		System.out.println(obj);
		System.out.println("End TimeChecking~~");
		System.out.println(timeCheck());
		return obj;
	}
	
	
	public String timeCheck() {
		Date d = new Date();
		return d.toString();
	}
}
