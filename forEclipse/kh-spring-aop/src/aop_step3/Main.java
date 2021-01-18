package aop_step3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {
	
	
	
	
	public Main() {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/aop_step3/aop_step3.xml");
		Dao dao = (Dao)context.getBean("proxy");
		System.out.println(dao.insert());
	}

	public static void main(String[] args) {
		new Main();
	}

}
