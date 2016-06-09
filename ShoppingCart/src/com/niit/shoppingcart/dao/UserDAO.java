package com.niit.shoppingcart.dao;

public class UserDAO {
   public boolean isValidCredentials(String uid,String pwd)
   {
	   if(uid.equals("niit") && pwd.equals("niit@123"))
	   {
		   return true;
	   }
	   else
	   {
		   return false;
	   }
	   
   }
}
