package com.scheduling.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.scheduling.model.*;

@Component
public class DriverDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
//add driver	
	@Transactional
	public int insert(Drivers v) {
		int i = (Integer) this.hibernateTemplate.save(v);
		return i;
	}
	
//view all drivers	
	public List<Drivers> viewAllDrivers()
	{
		return hibernateTemplate.loadAll(Drivers.class);
	}
//view one driver

		public Drivers viewDriver(int did)
		{
			Drivers drivers=hibernateTemplate.get(Drivers.class, did);
			return drivers;
		}
//update driver
		@Transactional
		public void updateDriver(Drivers driver)
		{
			hibernateTemplate.update(driver);
			
		}
		
//delete 
		@Transactional
		public void deleteDriver(Drivers driver)
		{
			hibernateTemplate.delete(driver);

		}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public DriverDao() {
	super();
	// TODO Auto-generated constructor stub
	}

	public DriverDao(HibernateTemplate hibernateTemplate) {
	super();
	this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String toString() {
	return "DriverDao [hibernateTemplate=" + hibernateTemplate + "]";
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


}
