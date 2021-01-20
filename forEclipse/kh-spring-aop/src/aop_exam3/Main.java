package aop_exam3;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {

	public Main() {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/aop_exam3/aop_exam3.xml");
		
		Product product = (Product)context.getBean("cDao");
		
		
		System.out.println("-------------");
		product.read("LG");
		System.out.println("-------------");
		product.update("LG");
		System.out.println("-------------");
		product.delete(1);
		System.out.println("-------------");
		
		List<String> list = product.create("LG");
		list.removeAll(list);
	}

	public static void main(String[] args) {
		new Main();
	}
}
