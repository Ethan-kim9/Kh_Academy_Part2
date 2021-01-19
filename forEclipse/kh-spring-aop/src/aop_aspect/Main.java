package aop_aspect;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {
	
	
	
	
	public Main() {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/aop_aspect/aop_aspect.xml");
		Dao dao = (Dao)context.getBean("bDao");
		System.out.println(dao.insert());
		
		List<String> list= dao.select();
		System.out.println(list);
		
		String str = dao.insert();
		System.out.println(str);
	}

	public static void main(String[] args) {
		new Main();
	}

}
