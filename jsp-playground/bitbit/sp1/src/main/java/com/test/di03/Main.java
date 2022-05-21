package com.test.di03;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:exam.xml");
		Exam exam1 = ctx.getBean("exam", Exam.class);
		exam1.outputMsg();
	}

}