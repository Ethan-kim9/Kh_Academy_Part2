package di_step4;

public class Main {

	DB db;
	// 외부 노출이 되면 안됨
	// 생성자를 통한 의존성 주입
	public Main(DB db) {
		this.db = db;
		System.out.println(db.select("kim"));
	}
	
	
	public void method(DB db) {
		this.db = db;
		System.out.println(db.select("your"));
	}
	public static void main(String[] args) {
	 Assembler as = new Assembler();
	 DB db = as.getDB();
	 Main m = new Main(db);
	 
	 m.method(db);
	 
	}
}

