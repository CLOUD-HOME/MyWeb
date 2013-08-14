package com.snow.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.snow.model.Comment;
import com.snow.model.Topic;
import com.snow.util.DBUtil;

/**
 * Servlet implementation class CommentServlet
 */
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
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
			//query(request, response);
		} else if("insert".equals(method)) {
			insert(request, response);
		} else if("detail".equals(method)) {
			//detail(request, response);
		}
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("content");
		content = new String(content.getBytes("ISO-8859-1"),"utf-8");
		String topicid = request.getParameter("topicid");
		Connection conn = DBUtil.getConn();
		String sql = "insert into comment (content, topicid) values (?, ?)";
		String temp1 = "select * from topic where id = ?";
		String temp2 = "select * from comment where topicid = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			PreparedStatement ps1 = conn.prepareStatement(temp1);
			PreparedStatement ps2 = conn.prepareStatement(temp2);
			ps.setString(1, content);
			ps.setInt(2, Integer.parseInt(topicid));
			ps1.setString(1, topicid);
			ps2.setString(1, topicid);
			int num = ps.executeUpdate();
			ResultSet rs1 = ps1.executeQuery();
			ResultSet rs2 = ps2.executeQuery();
			Topic t = new Topic();
			while(rs1.next()) {
				t.setId(Integer.parseInt(rs1.getString("id")));
				t.setTitle(rs1.getString("title"));
				t.setContent(rs1.getString("content"));
				t.setTypeid(Integer.parseInt(rs1.getString("typeid")));
			}
			List<Comment> list = new ArrayList<Comment>();
			while(rs2.next()) {
				Comment c = new Comment();
				c.setId(Integer.parseInt(rs2.getString("id")));
				c.setContent(rs2.getString("content"));
				c.setTopicid(Integer.parseInt(rs2.getString("topicid")));
				list.add(c);
			}
			System.out.println(num);
			request.setAttribute("topic", t);
			request.setAttribute("list", list);
			request.getRequestDispatcher("jsp/forum/forum.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
	}

}
