package aop_step3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {
	
	
	
	
	public Main() {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/aop_step3/aop_step3.xml");
		
		Advice advice = (Advice)context.getBean("advice");
		System.out.println(advice.beforeAdvice());
		System.out.println("");
		System.out.println("--------------------");
		System.out.println("");
		System.out.println(advice.aroundAdvice());
		System.out.println("");
		System.out.println("--------------------");
		System.out.println("");
		System.out.println(advice.afterAdvice());
	}

	public static void main(String[] args) {
		new Main();
	}

}
