package di_step3;

import java.util.ArrayList;
import java.util.List;

public class MyDB implements DB {

	@Override
	public List<String> select(String findStr) {
		List<String> list = new ArrayList<String>();
		String a = "오라클에서 검색이 됐네요.";
		list.add(a);
		
		return list;
	}

	@Override
	public String insert(String mid, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update(String mid, int serial) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String mid, String pwd, int serial) {
		// TODO Auto-generated method stub
		return 0;
	}

}
