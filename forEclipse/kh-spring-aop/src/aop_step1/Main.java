package aop_step1;

public class Main {
	public static void main(String[] args) {
		
		System.out.println("MemberDao 로그 출력");
		new MemberDao();
		System.out.println("-------------------");
		System.out.println("BoardDao 로그 출력");
		new BoardDao();
		System.out.println("-------------------");
		System.out.println("SalesDao 로그 출력");
		new SalesDao();
	}

}
