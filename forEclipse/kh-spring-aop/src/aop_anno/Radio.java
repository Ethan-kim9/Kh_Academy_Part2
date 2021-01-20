package aop_anno;

import java.util.ArrayList;
import java.util.List;

public class Radio implements Product {

	@Override
	public List<String> create(String findStr) {
		List<String> list = new ArrayList<>();
		
		list.add(findStr+"라디오 1대 생성");
		list.add(findStr+"라디오 2대 생성");
		list.add(findStr+"라디오 3대 생성");
		return list;
	}

	@Override
	public int read(String name) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(String name) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int serial) {
		// TODO Auto-generated method stub
		return 0;
	}

}
