package com.resid.filter;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class SessionBlockerFilter implements Filter {
	Set<String> allowsUrl = new HashSet<>();

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		allowsUrl.add("/signin.jsp");
		allowsUrl.add("/signUp.jsp");
		allowsUrl.add("/forgotpass.jsp");
		allowsUrl.add("/forgotpass");
		allowsUrl.add("/register");
		allowsUrl.add("/signin");
		allowsUrl.add("/forgotpass");
		allowsUrl.add("searchUser");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;

		// here we get all the resources like name of jsp and servlets we have in the
		// project
		String resourcesNames = httpServletRequest.getServletPath();

		// thsi will print out the details of accessed files/pages
		System.out.println("Accessing ResourceName =" + resourcesNames +" at time =" + LocalDateTime.now());

		

		// here we wrtie more logics using if else with help of httpservletrequest-line
		// 23
		HttpSession session = httpServletRequest.getSession(false);
		if (allowsUrl.contains(resourcesNames) || allowsUrl.contains("photos")) {
			chain.doFilter(request, response);
		} else {
			// if session exist
			if (session != null && session.getAttribute("show")!= null) {
				chain.doFilter(request, response);
			}
			// if session does not exist
			else {
				((HttpServletResponse) response).sendRedirect(httpServletRequest.getContextPath()+"/signin.jsp");
			}

		}

	}

}
