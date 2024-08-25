package com.scheduling.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.scheduling.model.*;



@Component
public class BusDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public String addBus(Bus bus) {
		
		String i=(String) this.hibernateTemplate.save(bus);
		return i;
	}
	
	
	
	public BusDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BusDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String toString() {
		return "BusDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
	
}