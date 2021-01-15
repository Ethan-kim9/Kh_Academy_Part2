package di_step6;

public class MemberDao {
	DB db;
	
	// 생성자를 통해서 주입함
	public MemberDao(DB db) {
		this.db = db;
		System.out.println(db.select(""));
	}
}
