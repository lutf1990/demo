package com.resid.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ApplicationstStartupListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("********************************************************\n");
		System.out.println("@@@@@@@@@--> Your Application is Up and Run <--@@@@@@@@@");
		System.out.println("\n********************************************************");
		ServletContext context = sce.getServletContext();
		context.setAttribute("Author","Lutfullah Momin");
		context.setAttribute("address", "Dallas, TX US");
	}
public void contextDestroyed(ServletContextEvent sec) {
		
	}
}
