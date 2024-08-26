package com.scheduling.model;

import javax.persistence.Entity;
import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Schedule 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sid;
	private int did;
	private String dname;
		
	private int cid;
	private String cname;

	private String bid;
	
	private int rid;
	private String rsource;
	private String rdest;
	private String rmid;
	
	

}
