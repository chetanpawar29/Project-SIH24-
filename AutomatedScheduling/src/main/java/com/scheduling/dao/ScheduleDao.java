package com.scheduling.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.scheduling.model.Bus;
import com.scheduling.model.Conductor;
import com.scheduling.model.Schedule;
@Component
public class ScheduleDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public ScheduleDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public ScheduleDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ScheduleDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
	//view all schedules
	public List<Schedule> viewAllSchedules()
	{
		return hibernateTemplate.loadAll(Schedule.class);
	}
	@Transactional
	public int insert(Schedule v) {
		int i = (Integer) this.hibernateTemplate.save(v);
		return i;
	}
}
