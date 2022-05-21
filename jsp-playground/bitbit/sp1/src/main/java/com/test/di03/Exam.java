package com.test.di03;

public class Exam {
	private String msg;
	public Exam() {}
	public Exam(String msg) {
		super();
		this.msg = msg;
	}
	
	public void outputMsg() {
		System.out.println("msg : "+msg);
	}
}
