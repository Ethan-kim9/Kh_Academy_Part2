package di_step3;

public class Assembler {
	DB db;
	public DB getDb() {
		db = new Database();
		return db;
	}
}
