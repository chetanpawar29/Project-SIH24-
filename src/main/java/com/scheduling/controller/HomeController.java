package com.scheduling.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMethod;


import com.scheduling.dao.*;
import com.scheduling.model.*;



@Controller
public class HomeController {
	
	@Autowired
	Admin admin;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	Drivers drivers;
	
	@Autowired
	DriverDao driverDao;
	
	@Autowired
	Conductor conductor;
	
	@Autowired
	ConductorDao conductorDao;
	
	@Autowired
	Route route;
	
	@Autowired
	Bus bus;
	
	@Autowired
	RouteDao routeDao;
	
	@Autowired
	BusDao busDao;
	
//index page
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


	
//view all drivers
		
		@RequestMapping("/viewAllDrivers")
		public String viewAllDrivers(Model model)
		{
			List<Drivers> driver=driverDao.viewAllDrivers();
			model.addAttribute("driverList",driver);
			
			return "a_3_viewAllDrivers";
		}
//view one driver
	
		
				@RequestMapping("/viewOne")
				public String viewOneAccount()
				{
					return "viewOneDriver";
				}
				@RequestMapping(path="/viewOneDriver",method=RequestMethod.POST)
				public String viewOneDriver(Model model,HttpServletRequest request)
				{
					
					int did=Integer.parseInt(request.getParameter("did"));	
					Drivers driver=driverDao.viewDriver(did);
					model.addAttribute("driverList",driver);
					return "welcome";
				}
//update driver
				@RequestMapping("/update")
				public String updateAccount(HttpServletRequest request)
				{
					
					return "a_5_updateDriver";
				}
				@RequestMapping(path="/UpdatingDriver",method=RequestMethod.POST)
				public String UpdatingDriver(HttpServletRequest request)
				{
					int did=Integer.parseInt(request.getParameter("did"));
					String dname=request.getParameter("dname");
					String daddress=request.getParameter("daddress");
					String dmob=request.getParameter("dmob");
					String demail=request.getParameter("demail");
					String dgender=request.getParameter("dgender");
					Drivers drivers=driverDao.viewDriver(did);
					drivers.setDid(did);
					drivers.setDname(dname);
					drivers.setDaddress(daddress);
					drivers.setDgender(dgender);
					drivers.setDmob(dmob);
					drivers.setDemail(demail);
					driverDao.updateDriver(drivers);
					return "redirect:viewAllDrivers";
				}
		
//delete driver
		
				@RequestMapping("/delete")
				public String deleteDriver(HttpServletRequest request)
				{
					int did=Integer.parseInt(request.getParameter("did"));
					Drivers driver= driverDao.viewDriver(did);
					driverDao.deleteDriver(driver);
					return "redirect:/viewAllDrivers";
				}
		
		
		
//view all conductors
			
			
			@RequestMapping("/viewAllConductors")
			public String viewAllConductors(Model model)
			{
				List<Conductor> conductor=conductorDao.viewAllConductors();
				model.addAttribute("conductorList",conductor);
				
				return "a_4_viewAllConductors";
			}
//view one conductor
			
			
			@RequestMapping("/viewOneC")
			public String viewOneConductor()
			{
				return "viewOneConductor";
			}
			@RequestMapping(path="/viewOneConductor",method=RequestMethod.POST)
			public String viewOneConductor(Model model,HttpServletRequest request)
			{
				
				int cid=Integer.parseInt(request.getParameter("cid"));	
				Conductor conductor=conductorDao.viewConductor(cid);
				model.addAttribute("ConductorList",conductor);
				return "welcome";
			}
//update conductor
			@RequestMapping("/updateC")
			public String updateConductor(HttpServletRequest request)
			{
				
				return "a_6_updateConductor";
			}
			@RequestMapping(path="/UpdatingConductor",method=RequestMethod.POST)
			public String UpdatingConductor(HttpServletRequest request)
			{
				int cid=Integer.parseInt(request.getParameter("cid"));
				String cname=request.getParameter("cname");
				String caddress=request.getParameter("caddress");
				String cmob=request.getParameter("cmob");
				String cemail=request.getParameter("cemail");
				String cgender=request.getParameter("cgender");
				Conductor conductor=conductorDao.viewConductor(cid);
				conductor.setCid(cid);
				conductor.setCname(cname);
				conductor.setCaddress(caddress);
				conductor.setCemail(cemail);
				conductor.setCgender(cgender);
				conductor.setCmob(cmob);
				conductorDao.updateConductor(conductor);
			
				return "redirect:viewAllConductors";
			}
	
	
//delete Conductor
	
			@RequestMapping("/deleteConductor")
			public String deleteConductor(HttpServletRequest request)
			{
				int cid=Integer.parseInt(request.getParameter("cid"));
				Conductor conductor= conductorDao.viewConductor(cid);
				conductorDao.deleteConductor(conductor);
				return "redirect:/viewAllConductors";
			}
	
	
//add buses		
			@RequestMapping("/addBuses")
			public String openAddBusPage(){
				return "a_1_AddBus";
			}
			@RequestMapping(path="/addBus", method=RequestMethod.POST)
			public String addBuses(@ModelAttribute Bus bus,HttpServletRequest request)
			{
				String i = busDao.addBus(bus);				
				if(i!=null)
				{
					return "AdminHomePage";
				}
				else{
					return "a_1_AddBus";
				}
			}
//add routes			
			@RequestMapping("/addRoutes")
			public String openAddRoutePage(){
				return "a_1_AddRoute";
			}
			@RequestMapping(path="/addRoute", method=RequestMethod.POST)
			public String addRoutes(@ModelAttribute Route route, HttpServletRequest request) {
				if (route.getRstatus() == null) {
			        route.setRstatus("available");
			    }
			    int i = routeDao.addRoute(route);
			    return "index";
			}

}







