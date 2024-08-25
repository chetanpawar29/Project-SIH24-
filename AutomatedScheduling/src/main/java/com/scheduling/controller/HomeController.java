package com.scheduling.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.scheduling.dao.AdminDao;
import com.scheduling.dao.ConductorDao;
import com.scheduling.dao.DriverDao;
import com.scheduling.model.Admin;
import com.scheduling.model.Conductor;
import com.scheduling.model.Drivers;

@Controller
public class HomeController {

	@Autowired
	Admin admin;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	Conductor conductor;
	
	@Autowired
	ConductorDao conductorDao;
	
	@Autowired
	Drivers driver;
	
	@Autowired
	DriverDao driverDao;
	
	@RequestMapping("/")
	public String openIndexPage()
	{
		return "index";
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin()
	{
		return "AdminLogin";
	}
	
	@RequestMapping(path="/loginAdmin",method=RequestMethod.POST)
	public String loginAdmin(HttpServletRequest request)
	{
		String email = request.getParameter("aemail");
		String password = request.getParameter("apassword");
		Admin admin = adminDao.get(email);
		
		if(email.equals(admin.getAemail())&&password.equals(admin.getApassword()))
		{
			return "AdminHomePage";
		}
		else
		{
			return "AdminLogin";
		}
	}
	
//	add conductor
	@RequestMapping("/openAddConductor")
	public String openAddConductor()
	{
		return "a_1_AddConductor";
	}
	@RequestMapping(path="/addConductor",method=RequestMethod.POST)
	public String addConductor(@ModelAttribute Conductor v,HttpServletRequest request)
	{
		int i = conductorDao.insert(v);
		
		if(i>0)
		{
			return "AdminHomePage";
		}
		else{
			return "a_1_AddConductor";
		}
	}
	
//	add Driver
	@RequestMapping("/openAddDriver")
	public String openAddDriver()
	{
		return "a_2_AddDriver";
	}
	@RequestMapping(path="/addDriver",method=RequestMethod.POST)
	public String addDriver(@ModelAttribute Drivers v,HttpServletRequest request)
	{
		int i = driverDao.insert(v);
		
		if(i>0)
		{
			return "AdminHomePage";
		}
		else{
			return "a_2_AddDriver";
		}
	}
}
