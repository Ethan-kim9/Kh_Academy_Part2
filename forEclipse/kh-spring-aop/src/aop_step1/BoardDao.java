package aop_step1;

import java.util.Date;

public class BoardDao implements Log {
		Date d = new Date();
		
		public BoardDao() {
			System.out.println(logOut());
		}
		
		@Override
		public String logOut() {
			String board = d.toString();
			return board;
		}
}
