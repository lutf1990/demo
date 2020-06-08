package com.resid.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class SignUpServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String ssn = req.getParameter("ssn");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String image = req.getParameter("image");
		
		try {
			String sql = " insert into signup_tbl(name,email,phone,dob,gender,ssn,username,password,image,doe) values(?,?,?,?,?,?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect =DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp_db","root","Qasim1123@");
			PreparedStatement pstmt = connect.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, phone);
			pstmt.setString(4, dob);
			pstmt.setString(5, gender);
			pstmt.setString(6, ssn);
			pstmt.setString(7, username);
			pstmt.setString(8, password);
			pstmt.setString(9, image);
			Timestamp timestamp = new Timestamp(new Date().getTime());
			pstmt.setTimestamp(10, timestamp);
			int rows = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("signup", "you have succesfully signup!!!!!!!");
		req.getRequestDispatcher("signin.jsp").forward(req, resp);
	}
}
