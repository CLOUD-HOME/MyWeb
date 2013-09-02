package com.android.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.snow.model.User;
import com.snow.util.DBUtil;

/**
 * Servlet implementation class UserServlet
 */
public class AUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		
		if("login".equals(method)) {
			login(request, response);
		} else if ("insert".equals(method)) {
			insert(request, response);
		} else if ("islogin".equals(method)) {
			islogin(request, response);
		} else if ("preUpdate".equals(method)) {
			preUpdate(request, response);
		} else if ("update".equals(method)) {
			update(request, response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Connection conn = DBUtil.getConn();
		String sql = "select * from user where name = ? and password = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			User u = new User();
			u.setId(0);
			while(rs.next()) {
				u.setId(Integer.parseInt(rs.getString("id")));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setSex(rs.getString("sex"));
				u.setTime(rs.getString("time"));
			}
			request.getSession().setAttribute("user", u);
			JSONObject user= new JSONObject(u);
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().println(user.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}  
	}
	
	
	private void islogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			User u = (User) request.getSession().getAttribute("user");
			JSONObject user= new JSONObject(u);
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().println(user.toString());
	}
	
	
	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String source = request.getParameter("source");
		Connection conn = DBUtil.getConn();
		String sql = "insert into user(name, password, sex, email, time) values (?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, sex);
			ps.setString(4, email);
			ps.setString(5, new Date().toString());
			int num = ps.executeUpdate();
			System.out.println(num);
			if("register".equals(source)) {
				if(num <0) {
					response.getWriter().write("1");
					return;
				}
				response.getWriter().write(name + ":" + password);
				return;
			}
			request.getRequestDispatcher("/jsp/admin/user/add.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}  
	}
	
	private void preUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Connection conn = DBUtil.getConn();
		String sql = "select * from user where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(id));
			ResultSet rs = ps.executeQuery();
			User u = new User();
			while(rs.next()) {
				u.setId(Integer.parseInt(rs.getString("id")));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setSex(rs.getString("sex"));
				u.setEmail(rs.getString("email"));
				u.setTime(rs.getString("time"));
			}
			request.setAttribute("user", u);
			request.getRequestDispatcher("/jsp/admin/user/update.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}  
	}
	
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		Connection conn = DBUtil.getConn();
		String sql = "update user set name=?, password=?, sex=?, email=?, time=? where id=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, sex);
			ps.setString(4, email);
			ps.setString(5, new Date().toString());
			ps.setInt(6, Integer.parseInt(id));
			int num = ps.executeUpdate();
			System.out.println(num);
			User u = new User();
			if(num > 0) {
				u.setId(Integer.parseInt(id));
				u.setName(name);
				u.setPassword(password);
				u.setSex(sex);
				u.setEmail(email);
				u.setTime(new Date().toString());
			}
			request.setAttribute("user", u);
			request.getRequestDispatcher("/jsp/admin/user/update.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		} 
	}

}
