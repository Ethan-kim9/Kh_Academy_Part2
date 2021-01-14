package di_step3;

public class Main {

	
	public Main() {
		DB db = new OracleDB();
		System.out.println(db.select("kim"));
	db = new Database();
		System.out.println(db.select("park"));
	db = new MyDB();
		System.out.println(db.select("lee"));
	}
	
	public static void main(String[] args) {
		new Main();
	}
}
