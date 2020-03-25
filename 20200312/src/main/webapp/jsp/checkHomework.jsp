<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.ResultSet"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/table.css">
<script src="../js/menu.js"></script>
</head>
<body>

<div class="turnback">
		<a href="../jsp/index.jsp"><img
			style="height: 120px; width: 120px; border-radius: 50%;"
			src="../img/turnback1.jpg"></a>
	</div>
	
	<div class="content">
		<div align="center"
			style="font-size: 30px; font-family: KaiTi; font-weight: bold;">作业列表</div>
		<table class="table" width="100%" border="0">
			<tr>
				<th>作业编号</th>
				<th>学生名字</th>
				<th>学生作业</th>
			</tr>
			<jsp:useBean id="mario" class="jdbc.Mario" />
			<%
				request.setCharacterEncoding("UTF-8");

				//数据库操作
				String sql = "select * from studentHomework";//定义查询语句
				ResultSet rs = mario.executeQuery(sql);//执行sql语句
				while (rs.next()) {
				out.println("<tr>"
				+"<td>" + rs.getObject("homeworkNum")+"</td>"
				+"<td>" + rs.getObject("studentName")+"</td>"
				+"<td>" + rs.getObject("homeworkContent")+"</td>"
				+"</tr>");
				}
				mario.closeConnection();
			%>
		</table>
	</div>


</body>
</html>