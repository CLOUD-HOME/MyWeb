<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.snow.model.User" %>
<%@ page import="com.snow.model.Article" %>
<%@ page import="java.util.*" %>
<%User u = (User)session.getAttribute("user");%>

<script type="text/javascript">
<!--
	function query() {
		//alert(0);
		document.forms[0].submit();
	}
//-->
</script>

<h1>欢迎你：<%=u.getName() %></h1>
<h2>文章列表</h2>
<div style="height: 30px;">
	<div style="float: left;">
		<a href="<%=request.getContextPath()%>/jsp/admin/type/add.jsp"><b>新增</b></a>
		<a href="<%=request.getContextPath()%>/jsp/admin/index.jsp"><b>返回管理</b></a>
	</div>
	<div style="float: right; height: 30px;">
		<form action="<%=request.getContextPath()%>/ArticleServlet?method=search" method="post">
		<input name="keyword" value="<%=request.getAttribute("keyword")%>">
		<a href="javascript:void(0);" onclick="query()"><b>查询</b></a>
		</form>
	</div>
</div>
<table border="1" style="width: 100%">
	<tr>
		<th width="3%">序号</th>
		<th width="3%">标识</th>
		<th width="6%">分类标识</th>
		<th width="6%">用户标识</th>
		<th width="23%">标题</th>
		<th width="42%">内容</th>
		<th width="11%">发表时间</th>
		<th width="6%">操作</th>
	</tr>
	<%
	List<Article> list = (List<Article>)request.getAttribute("list");
	if(null == list) {
		return;
	}
	int num = 0;
	for(Iterator<Article> i = list.iterator(); i.hasNext();) {
		Article a = i.next();
		num ++;
	%>
	<tr>
		<td><%=num %></td>
		<td><%=a.getId() %></td>
		<td><%=a.getTypeid() %></td>
		<td><%=a.getUserid() %></td>
		<td><%=a.getTitle()%></td>
		<td><textarea cols="75"><%=a.getContent() %></textarea></td>
		<td><%=a.getTime() %></td>
		<td><a href="<%=request.getContextPath()%>/ArticleServlet?method=preUpdate&id=<%=a.getId()%>">修改</a>|<a href="<%=request.getContextPath()%>/ArticleServlet?method=delete&id=<%=a.getId()%>">删除</a></td>
	</tr>
	<%
	}
	%>
</table>