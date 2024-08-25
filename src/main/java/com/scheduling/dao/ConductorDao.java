package com.scheduling.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.scheduling.model.*;

@Component
public class ConductorDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
//add conductor	
	@Transactional
	public int insert(Conductor v) {
		int i = (Integer) this.hibernateTemplate.save(v);
		return i;
	}
	
//view all conductors
		public List<Conductor> viewAllConductors()
		{
			return hibernateTemplate.loadAll(Conductor.class);
		}
		
//view one conductor

				public Conductor viewConductor(int cid)
				{
					Conductor conductor=hibernateTemplate.get(Conductor.class, cid);
					return conductor;
				}
				
//update conductor
				@Transactional
				public void updateConductor(Conductor conductor)
				{
					hibernateTemplate.update(conductor);
					
				}
				
//delete 
				@Transactional
				public void deleteConductor(Conductor conductor)
				{
					hibernateTemplate.delete(conductor);

				}
	

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public ConductorDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ConductorDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String toString() {
		return "ConductorDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
}
