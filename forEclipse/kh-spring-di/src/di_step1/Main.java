package di_step1;

public class Main {
	String r = null;
	
	public Main() {
		OracleDB kim = new OracleDB();
		System.out.println(kim.findDB());
		
		myDB lee = new myDB();
		lee.oracle();
		
		Database park = new Database();
		System.out.println(park.DBfinder());
	}
	
	
	public static void main(String[] args) {
		new Main();
	}
}
