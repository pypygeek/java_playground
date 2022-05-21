package com.test.ex;

public class StudentDTO {
	private String no;
	private String pw;
	private String name;
	private String hp;
	
	public StudentDTO() {
		super();
		System.out.println("studentDTO 객체가 생성됨");
	}

	public StudentDTO(String no, String pw, String name, String hp) {
		super();
		this.no = no;
		this.pw = pw;
		this.name = name;
		this.hp = hp;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
		System.out.println("NO 저장됨");
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
		System.out.println("PW 저장됨");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
		System.out.println("name 저장됨");
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
		System.out.println("hp 저장됨");
	}
	
}
