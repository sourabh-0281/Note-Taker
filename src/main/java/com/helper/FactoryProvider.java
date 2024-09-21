package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	private static SessionFactory sf;
	public static SessionFactory getFactory() {
		if(sf==null) {  
		sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return sf;  
}
	public static void closeFactory() {
		if(sf.isOpen()) {
			sf.close();
		}
	}
}
