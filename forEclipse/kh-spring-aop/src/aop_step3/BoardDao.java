package aop_step3;

import java.util.List;

public class BoardDao implements Dao {
		
		
		

		public BoardDao() {
		}

		@Override
		public List<String> select() {
			return null;
		}

		@Override
		public String insert() {
			return "BoardDao.insert()";
		}

		@Override
		public String update() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String delete() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String repl() {
			// TODO Auto-generated method stub
			return null;
		}
}
