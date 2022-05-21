package pj1;

public class Love {
	private String name;
	private int year;
	private String history;
	
	public Love() {
		super();
}
	public Love(String name, int year, String history) {
		super();
		this.name = name;
		this.year = year;
		this.history = history;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	
}
