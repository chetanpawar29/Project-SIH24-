package com.scheduling.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@Autowired 
	ScheduleDao scheduleDao;
	
	
	
	

	
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
//view one driver
	
			@RequestMapping("/viewOne")
			public String viewOneAccount()
			{
				return "viewDriver";
			}
			@RequestMapping(path="/viewDriver",method=RequestMethod.POST)
			public String viewDriver(Model model,HttpServletRequest request)
			{
				
				int did=Integer.parseInt(request.getParameter("did"));
				Drivers driver=driverDao.viewDriver(did);	
				model.addAttribute("driverList",driver);
				return "welcome";
			}
		
//view all drivers
		
		@RequestMapping("/viewAllDrivers")
		public String viewAllDrivers(Model model)
		{
			List<Drivers> drivers=driverDao.viewAllDrivers();
			model.addAttribute("driversList",drivers);
			
			return "a_5_viewAllDrivers";
		}
//delete driver
				@RequestMapping("/delete")
				public String deleteDrivers(HttpServletRequest request)
				{
					int did=Integer.parseInt(request.getParameter("did"));
					Drivers drivers=driverDao.viewDriver(did);
					driverDao.deleteDriver(drivers);				
					return "redirect:/viewAllDrivers";
				}
//update
				@RequestMapping("/updateD")
				public String updateDriver(HttpServletRequest request)
				{
					
					return "a_7_updateDriver";
				}
				@RequestMapping(path="/updatingDriver",method=RequestMethod.POST)
				public String updatingDrivers(HttpServletRequest request)
				{
					int did=Integer.parseInt(request.getParameter("did"));
					String dname=request.getParameter("dname");
					String daddress=request.getParameter("daddress");
					String dmob=request.getParameter("dmob");
					String demail=request.getParameter("demail");
					String dgender=request.getParameter("dgender");
					String dstatus=request.getParameter("dstatus");
					Drivers drivers=driverDao.viewDriver(did);
					drivers.setDaddress(daddress);
					drivers.setDemail(demail);
					drivers.setDgender(dgender);
					drivers.setDid(did);
					drivers.setDmob(dmob);
					drivers.setDname(dname);
					drivers.setDstatus(dstatus);
					driverDao.updateDriver(drivers);
					
					return "redirect:viewAllDrivers";
				}
//view one conductor
		
		@RequestMapping("/viewOneC")
		public String viewOneConductor()
		{
			return "viewConductor";
		}
		@RequestMapping(path="/viewConductor",method=RequestMethod.POST)
		public String viewConductor(Model model,HttpServletRequest request)
		{
			
			int cid=Integer.parseInt(request.getParameter("cid"));
			Conductor conductor=conductorDao.viewConductor(cid);				
			model.addAttribute("conductorList",conductor);
			return "welcome";
		}
	
//view all Conductors
	
	@RequestMapping("/viewAllConductors")
	public String viewAllConductors(Model model)
	{
		List<Conductor> conductor=conductorDao.viewAllConductors();
		model.addAttribute("conductorsList",conductor);
		
		return "a_6_viewAllConductors";
	}	
	
//delete conductor
		@RequestMapping("/deleteC")
		public String deleteConductor(HttpServletRequest request)
		{
			int cid=Integer.parseInt(request.getParameter("cid"));
			Conductor conductor=conductorDao.viewConductor(cid);
			conductorDao.deleteConductor(conductor);
			
			return "redirect:/viewAllConductors";
		}
//update
				@RequestMapping("/update")
				public String updateAccount(HttpServletRequest request)
				{
					
					return "a_8_updateConductor";
				}
				@RequestMapping(path="/updatingConductor",method=RequestMethod.POST)
				public String PassingId(HttpServletRequest request)
				{
					int cid=Integer.parseInt(request.getParameter("cid"));
					String cname=request.getParameter("cname");
					String caddress=request.getParameter("caddress");
					String cmob=request.getParameter("cmob");
					String cemail=request.getParameter("cemail");
					String cgender=request.getParameter("cgender");
					String cstatus=request.getParameter("cstatus");
					Conductor conductor=conductorDao.viewConductor(cid);
					conductor.setCid(cid);
					conductor.setCname(cname);
					conductor.setCaddress(caddress);				
					conductor.setCemail(cemail);
					conductor.setCgender(cgender);
					conductor.setCmob(cmob);
					conductor.setCstatus(cstatus);
					conductorDao.updateConductor(conductor);
					return "redirect:viewAllConductors";
				}
//add bus				
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
//view one bus
	
	@RequestMapping("/viewOneBus")
	public String viewOneBus()
	{
		return "viewBus";
	}
	@RequestMapping(path="/viewBus",method=RequestMethod.POST)
	public String viewBus(Model model,HttpServletRequest request)
	{
		
		String bid=request.getParameter("bid");
		Bus bus=busDao.viewBus(bid);
		model.addAttribute("busList",bus);
		return "welcome";
	}

//view all buses

@RequestMapping("/viewAllBuses")
public String viewAllBuses(Model model)
{
	List<Bus> buses=busDao.viewAllBuses();
	model.addAttribute("busesList",buses);	
	return "a_9_viewAllBuses";
}
//delete bus
		@RequestMapping("/deleteB")
		public String deleteBus(HttpServletRequest request)
		{
			String bid=request.getParameter("bid");
			Bus bus=busDao.viewBus(bid);
			busDao.deleteBus(bus);				
			return "redirect:/viewAllBuses";
		}
//update bus
		@RequestMapping("/updateB")
		public String updateBus(HttpServletRequest request)
		{
			
			return "a_10_updateBus";
		}
		@RequestMapping(path="/updatingBus",method=RequestMethod.POST)
		public String updatingBus(HttpServletRequest request)
		{
			int bseats=Integer.parseInt(request.getParameter("bseats"));
			String bid=request.getParameter("bid");
			String bstatus=request.getParameter("bstatus");
			Bus bus=busDao.viewBus(bid);
			bus.setBid(bid);
			bus.setBseats(bseats);
			bus.setBstatus(bstatus);
			busDao.updateBus(bus);
			
			return "redirect:viewAllBuses";
		}	
//add routes	
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
	//view all routes

	@RequestMapping("/viewAllRoutes")
	public String viewAllRoutes(Model model)
	{
		List<Route> routes=routeDao.viewAllRoutes();
		model.addAttribute("routeList",routes);	
		return "a_12_viewRoutes";
	}
	//delete route
			@RequestMapping("/deleteR")
			public String deleteRoute(HttpServletRequest request)
			{
				int rid=Integer.parseInt(request.getParameter("rid"));
				Route route =routeDao.viewRoute(rid);
				routeDao.deleteRoute(route);		
				return "redirect:/viewAllRoutes";
			}
	//update route
			@RequestMapping("/updateR")
			public String updateRoute(HttpServletRequest request)
			{
				
				return "a_13_updateRoute";
			}
			@RequestMapping(path="/updatingRoute",method=RequestMethod.POST)
			public String updatingRoute(HttpServletRequest request)
			{
				int rid=Integer.parseInt(request.getParameter("rid"));
				String rsource=request.getParameter("rsource");
				String rdest=request.getParameter("rdest");
				String rmid=request.getParameter("rmid");
				String rstatus=request.getParameter("rstatus");
				String time=request.getParameter("time");
				Route route=routeDao.viewRoute(rid);
				route.setRdest(rdest);
				route.setRid(rid);
				route.setRmid(rmid);
				route.setRsource(rsource);
				route.setRstatus(rstatus);
				route.setTime(time);
				routeDao.updateRoute(route);
				return "redirect:viewAllRoutes";
			}
			//view Schedules
			@RequestMapping("/viewAllSchedules")
			public String viewAllSchedules(Model model)
			{
				List<Bus> busList=busDao.viewAllBuses();
				model.addAttribute("busList",busList);	
				List<Drivers> driverList=driverDao.viewAllDrivers();
				model.addAttribute("driverList",driverList);	
				List<Conductor> conductorList=conductorDao.viewAllConductors();
				model.addAttribute("conductorList",conductorList);	
				List<Route> routeList=routeDao.viewAllRoutes();
				model.addAttribute("routeList",routeList);	
				
				return "a_11_viewAllSchedules";
			}

}
