package aop_step1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SalesDao implements Log{

	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD hh:mm");
	
	
	public SalesDao() {
		System.out.println(logOut());
	}


	@Override
	public String logOut() {
		return sdf.format(new Date());
	}
	
}
