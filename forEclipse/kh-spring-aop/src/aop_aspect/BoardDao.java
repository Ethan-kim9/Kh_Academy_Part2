package aop_aspect;

import java.util.ArrayList;
import java.util.List;

public class BoardDao implements Dao {
		
		
		

		public BoardDao() {
		}

		@Override
		public List<String> select() {
			List<String> list = new ArrayList<>();
			
			list.add("고른 것");
			list.add("고른 것2");
			list.add("고른 것3");
			
			return list;
		}

		@Override
		public String insert() {
			return "BoardDao.insert()";
		}

		@Override
		public String update() {
			// TODO Auto-generated method stub
			return "BoardDao.update()";
		}

		@Override
		public String delete() {
			// TODO Auto-generated method stub
			return "BoardDao.delete()";
		}

		@Override
		public String repl() {
			// TODO Auto-generated method stub
			return null;
		}
}
