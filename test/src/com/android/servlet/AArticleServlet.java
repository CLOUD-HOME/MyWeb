package com.android.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.snow.model.Article;
import com.snow.model.User;
import com.snow.util.DBUtil;

/**
 * Servlet implementation class AArticleServlet
 */
public class AArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AArticleServlet() {
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
		if("query".equals(method)) {
			query(request, response);
		} else if ("insert".equals(method)) {
			insert(request, response);
		}
	}
	
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String typeid = request.getParameter("typeid");
		String source = request.getParameter("source");
		User u = (User) request.getSession().getAttribute("user");
		Integer userid = null;
		if(null != u) {
			userid = u.getId();
		} else {
			userid = 9999;
		}
		Connection conn = DBUtil.getConn();
		String sql = "select * from article where typeid = ? and userid = ? order by id desc";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, typeid);
			ps.setInt(2, userid);
			if("admin".equals(source)) {
				sql = "select * from article where userid = ?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, userid);
			} 
			ResultSet rs = ps.executeQuery();
			List<Article> list = new ArrayList<Article>();
			while(rs.next()) {
				Article a = new Article();
				a.setId(Integer.parseInt(rs.getString("id")));
				a.setTypeid(Integer.parseInt(rs.getString("typeid")));
				a.setUserid(Integer.parseInt(rs.getString("userid")));
				a.setTitle(rs.getString("title"));
				a.setContent(rs.getString("content"));
				a.setTime(rs.getString("time"));
				//System.out.println(a.toString());
				list.add(a);
			}
			//request.setAttribute("list", list);
			//request.setAttribute("typeid", typeid);
			JSONArray jsonArr= new JSONArray(list);
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().println(jsonArr.toString());
			//response.sendRedirect(request.getContextPath() + "/l.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		
	}
	
	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String typeid = request.getParameter("typeid");
		String userid = request.getParameter("userid");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String content = request.getParameter("content");
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:ss");
		String time = df.format(date);
		Connection conn = DBUtil.getConn();
		String sql = "insert into article values (null, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(typeid));
			if(userid != null && !"".equals(userid)){
				ps.setInt(2, Integer.parseInt(userid));
			}else {
				ps.setInt(2, 9999);
			}
			if(userid == null || "".equals(userid)){
				ps.setString(3, author + "-" + title);
			}else{
				ps.setString(3, title);
			}
			ps.setString(4, content);
			ps.setString(5, time);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		
	}

}
