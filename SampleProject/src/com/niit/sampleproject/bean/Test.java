package com.niit.sampleproject.bean;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Test {
	public static void displayAccountDetails(Account a)
	{
		System.out.println(a.getId());
		System.out.println(a.getName());
		
	}
	
	public static void display(Customer c)
	{
		System.out.println(c.getId());
		System.out.println(c.getName());
		System.out.println(c.getPassword());
		System.out.println(c.getShippingAddress());
		System.out.println(c.getPermanentAddress());
		System.out.println(c.getMyAccounts());
		
		List accounts=c.getMyAccounts();
		Iterator it=accounts.iterator();
		
		while(it.hasNext())
		{
			Account a=(Account)it.next();
			displayAccountDetails(a);
		}
		
		
		
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        Customer c1=new Customer();
		
		c1.setId("101");
		c1.setName("abc");
		c1.setPassword("niit");
		
		Account a1=new Account();
		 a1.setId(1001);
		 a1.setName("sb");
		 List accounts=new ArrayList();
		 accounts.add(a1);
		 
		 a1=new Account();
		 a1.setId(1002);
		 a1.setName("sc");
	
		 accounts.add(a1);
		 
		 c1.setMyAccounts(accounts);
		 Test.display(c1);
		

	}

}
