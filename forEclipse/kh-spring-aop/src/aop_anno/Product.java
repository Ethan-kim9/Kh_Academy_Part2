package aop_anno;

import java.util.List;

public interface Product {
	public List<String> create(String findStr);
	public int read(String name);
	public int update(String name);
	public int delete(int serial);
}
