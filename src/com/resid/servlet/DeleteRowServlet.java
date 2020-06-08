package com.resid.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletesid")
public class DeleteRowServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String sid = req.getParameter("sid");
		try {
			String sql = "delete from signup_tbl where sid=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp_db","root","Qasim1123@");
			PreparedStatement pstmt = connect.prepareStatement(sql);
			pstmt.setString(1, sid);
			pstmt.executeUpdate();
			
			req.setAttribute("msg", "you have successfully delete the target");
			req.getRequestDispatcher("showallresidents").forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
