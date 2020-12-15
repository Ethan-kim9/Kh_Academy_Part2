package guestbook;

public class GuestBookVo {

		int	serial;
		String	memberId; 
		String	passWord;
		String	memberDate;
		
		public int getSerial() {
			return serial;
		}
		public void setSerial(int serial) {
			this.serial = serial;
		}
		public String getMemberId() {
			return memberId;
		}
		public void setMemberId(String memberID) {
			this.memberId = memberID;
		}
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		public String getMemberDate() {
			return memberDate;
		}
		public void setMemberDate(String memberDate) {
			this.memberDate = memberDate;
		}
		public String getDocument() {
			return document;
		}
		public void setDocument(String document) {
			this.document = document;
		}
		String	document;
}