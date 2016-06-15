package com.niit.shoppingcart1.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart1.bean.Category;

public class TestCategory {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart1.bean");
		context.refresh();
		Category c = (Category) context.getBean("category");
		c.setId("1");
		c.setName("abc");
		c.setDescritpion(3.0);
		System.out.println(c.getId());
		System.out.println(c.getName());
		System.out.println(c.getDescritpion());
		
	/*	if (c == null) {
			System.out.println(" unable to get category object");

		} else {
			System.out.println("category object is created");
		}*/
	}

}
