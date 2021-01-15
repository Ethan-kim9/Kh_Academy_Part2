package aop_exam1;

public class SalesDao implements Dao{

	@Override
	public void select() {
		System.out.println("Sales.select()");
	}

}
