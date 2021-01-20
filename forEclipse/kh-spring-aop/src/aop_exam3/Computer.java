package aop_exam3;

import java.util.ArrayList;
import java.util.List;

public class Computer implements Product {

	@Override
	public List<String> create(String findStr) {
		List<String> list = new ArrayList<>();
		
		list.add(findStr+" 1대 생성");
		list.add(findStr+" 2대 생성");
		list.add(findStr+" 3대 생성");
		System.out.println(list);
		return list;
	}

	@Override
	public int read(String name) {
		System.out.println("Computer.read()");
		return 1;
	}

	@Override
	public int update(String name) {
		System.out.println("Computer.update()");
		return 2;
	}

	@Override
	public int delete(int serial) {
		System.out.println("Computer.delete()");
		return 3;
	}
	
}
