package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class UserController {

   @Autowired
	UserDAO userDAO;
    
    @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");
		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(name, password,true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("login");
		}
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
    @RequestMapping("/adminHome")
	public ModelAndView adminHome()
	{
		return new ModelAndView("adminHome");
	}
    @RequestMapping("/contact")
	public ModelAndView contact()
	{
		return new ModelAndView("contact");
	}
    @RequestMapping("/home")
	public ModelAndView home()
	{
		return new ModelAndView("home");
	}
    @RequestMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("login");
	}@RequestMapping("/AccessDenied")
	public ModelAndView AccessDenied()
	{
		return new ModelAndView("AccessDenied");
	}
    @RequestMapping("/user")
	public ModelAndView user()
	{
		return new ModelAndView("user");
	}
    @RequestMapping("/view")
	public ModelAndView view()
	{
		return new ModelAndView("view");
	}
    @RequestMapping("/about")
   	public ModelAndView about()
   	{
   		return new ModelAndView("about");
   	}
    @RequestMapping("/clutch")
   	public ModelAndView clutch()
   	{
   		return new ModelAndView("clutch");
   	}

    @RequestMapping("/handbag")
   	public ModelAndView handbag()
   	{
   		return new ModelAndView("handbag");
   	}

    @RequestMapping("/sling")
   	public ModelAndView sling()
   	{
   		return new ModelAndView("sling");
   	}

    @RequestMapping("/index")
   	public ModelAndView index()
   	{
   		return new ModelAndView("index");
   	}

	@RequestMapping(value= "/register", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("register") UserDetails user){
		
			userDAO.saveOrUpdate(user);
			
		
		return "register";
		
	}
}
