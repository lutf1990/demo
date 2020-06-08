package com.resid.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Statement;
import com.resid.entity.ResidentsEntity;

@WebServlet("/searchUser")
public class SearchUserServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		 String searchText=req.getParameter("searchText");
		
		 List<ResidentsEntity> userList=new ArrayList<>(); 
		   try {
         	//Fetching all the rows no where class
     		String sql="select * from signup_tbl where name like '%"+searchText+"%' or phone like '%"+searchText+"%'  or email like '%"+searchText+"%'  or sid like '%"+searchText+"%'";
     		Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp_db","root","Qasim1123@");
				//compiling the query
				PreparedStatement pstmt=connect.prepareStatement(sql);
				//fire the  query
				ResultSet rs=pstmt.executeQuery();
				//ResultSet has multiple records
				
				while(rs.next()) {
					//public UserEntity(String userid, String password, String email, String name, String mobile, String image,String salutation) {
					ResidentsEntity entity = new ResidentsEntity(rs.getString(2), rs.getString(3), rs.getLong(4),
							rs.getString(5), rs.getString(6), rs.getLong(7), rs.getString(8), rs.getString(9), rs.getString(10));
					entity.setSid(rs.getInt(1));
					entity.setDoe(rs.getTimestamp(11));
					entity.setRole(rs.getString(12));
					userList.add(entity);
				}
		   }catch (Exception e) {
			   	e.printStackTrace();
		}		
		   req.setAttribute("residents",userList);
	    	req.getRequestDispatcher("showall.jsp").forward(req, resp);
	}
}
