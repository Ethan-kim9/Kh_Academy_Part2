package aop_anno;

public class BeforeAdvice {
	public boolean loginCheck() {
		// 로그인 여부를 판단하는 프로세스
		System.out.println("Login Check done access aproved");
		return true;
	}
}
