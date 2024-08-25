package com.scheduling.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.scheduling.dao.AdminDao;
import com.scheduling.dao.BusDao;
import com.scheduling.dao.ConductorDao;
import com.scheduling.dao.DriverDao;
import com.scheduling.dao.RouteDao;
import com.scheduling.model.Admin;
import com.scheduling.model.Bus;
import com.scheduling.model.Conductor;
import com.scheduling.model.Drivers;
import com.scheduling.model.Route;

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
	
	@Autowired
	Bus bus;
	
	@Autowired
	BusDao busDao;
	
	@Autowired
	Route route;
	
	@Autowired 
	RouteDao routeDao;

	
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
	
	@RequestMapping("/addBuses")
	public String openAddBusPage(){
		return "a_3_AddBus";
	}
	@RequestMapping(path="/addBus", method=RequestMethod.POST)
	public String addBuses(@ModelAttribute Bus bus, HttpServletRequest request) {
		if (bus.getBstatus() == null) {
	        bus.setBstatus("available");
	    }
	    String i = busDao.addBus(bus);
	    
	    if(i!=null)
		{
			return "AdminHomePage";
		}
		else{
			return "a_3_AddBus";
		}
	}
	
	@RequestMapping("/addRoutes")
	public String openAddRoutePage(){
		return "a_4_AddRoute";
	}

	@RequestMapping(path="/addRoute", method=RequestMethod.POST)
	public String addRoutes(@ModelAttribute Route route, HttpServletRequest request) {
		if (route.getRstatus() == null) {
	        route.setRstatus("available");
	    }
	    int i = routeDao.addRoute(route);
	    if(i>0)
		{
			return "AdminHomePage";
		}
		else{
			return "a_4_AddRoute";
		}
	}


}
