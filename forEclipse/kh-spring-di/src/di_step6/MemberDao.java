package di_step6;

public class MemberDao {
	DB db;
	

	// 메서드를 통해서 의존성 주입함
	public DB getDb() {
		return db;
	}
	
	public void setDb(DB db) {
		this.db = db;
		System.out.println("메서드를 통한 DB의존성 주입");
		System.out.println(db.select(""));
	}
}
