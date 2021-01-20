package aop_anno;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {

	public Main() {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/aop_anno/aop_anno.xml");
		
		Product product = (Product)context.getBean("tDao");
		
		System.out.println("-------------");
		product.read("LG");
		System.out.println("-------------");
		product.update("LG");
		System.out.println("-------------");
		product.delete(1);
		System.out.println("-------------");
		
		List<String> list = product.create("LG");
		System.out.println(list);
		list.removeAll(list);
	
	}

	public static void main(String[] args) {
		new Main();
	}
}
