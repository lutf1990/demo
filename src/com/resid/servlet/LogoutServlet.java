package com.resid.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
		session.invalidate();
		
		req.setAttribute("msg", "you have successfully logout!!!!!!!");
		req.getRequestDispatcher("signin.jsp").forward(req, resp);
	}
}
