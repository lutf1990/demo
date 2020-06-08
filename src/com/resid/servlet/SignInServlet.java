package com.resid.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resid.entity.ResidentsEntity;

@WebServlet("/signin")
public class SignInServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username =req.getParameter("username");
		String password = req.getParameter("password");
		
		try {
			String sql = "select sid,name,email,phone,dob,gender,ssn,username,password,image,doe,role from signup_tbl where username=? and password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp_db","root","Qasim1123@");
			PreparedStatement pstmt = connect.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				ResidentsEntity entity = new ResidentsEntity(rs.getString(2), rs.getString(3), rs.getLong(4),
						rs.getString(5), rs.getString(6), rs.getLong(7), rs.getString(8), rs.getString(9), rs.getString(10));
				entity.setSid(rs.getInt(1));
				entity.setDoe(rs.getTimestamp(11));
				entity.setRole(rs.getString(12));
				
				HttpSession session =req.getSession();
				session.setMaxInactiveInterval(600);
				session.setAttribute("show", entity);
				
				req.setAttribute("signmsg", "Welcome To The Review Page!!!!!!");
				req.getRequestDispatcher("review.jsp").forward(req,resp);
				
				
			}else {
				req.setAttribute("signmsg", "Sorry you are not a valid user!!!!!!");
				req.getRequestDispatcher("signin.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
