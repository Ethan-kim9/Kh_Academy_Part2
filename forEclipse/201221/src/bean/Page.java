package bean;

public class Page {
	int totListSize; //total List size
	int totPage;	//total Pages
	int startPage;
	int endPage;
	int StartNo;
	int endNo;
	int nowPage;
	int listSize=3;
	int blockSize=2;
	
	String findStr;
	
	
	
	public Page() {	}

	public Page(int tot, int now){
	this.totListSize = tot;
	this.nowPage =now;
	pageCompute();
	}

	
	public void pageCompute() {
		totPage = (int)Math.ceil(totListSize/(double)listSize);
		endNo = nowPage * listSize;
		StartNo = endNo - listSize + 1;
		
		endPage = (int)(Math.ceil(nowPage/(double)blockSize))*2;
		startPage = endPage - blockSize +1;
	}

	public int getTotListSize() {
		return totListSize;
	}

	public void setTotListSize(int totListSize) {
		this.totListSize = totListSize;
	}

	public int getTotpage() {
		return totPage;
	}

	public void setTotpage(int totpage) {
		this.totPage = totpage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartNo() {
		return StartNo;
	}

	public void setStartNo(int startNo) {
		StartNo = startNo;
	}

	public int getEndNo() {
		return endNo;
	}

	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getBlickSize() {
		return blockSize;
	}

	public void setBlickSize(int blickSize) {
		this.blockSize = blickSize;
	}

	public String getFindStr() {
		return findStr;
	}

	public void setFindStr(String findStr) {
		this.findStr = findStr;
	}

	
}
