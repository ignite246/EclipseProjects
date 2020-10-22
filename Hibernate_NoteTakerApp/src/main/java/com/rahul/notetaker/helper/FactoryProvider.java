package com.rahul.notetaker.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;
	public static SessionFactory getFactory() 
	{
		
		if(factory == null) 
		{
			    Configuration cfg = new Configuration();
		        cfg.configure("hibernate.cfg.xml");                          //path of hibernate config file
		        factory = cfg.buildSessionFactory();
		}
		
		return factory;
	}
	
	public static void closeFactory() 
	{
		if(factory.isOpen()) 
		{
			factory.close();
		}
	}
}
