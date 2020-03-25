<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.ResultSet" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/loginOrRegister.css">
<script src="../js/menu.js"></script>

</head>

<body>

			
	<!-- ======================================= -->
	<!-- ======================================= -->
	<!-- 登录信息 -->

	<div class="title">
		<div>
			<%
				String state = (String) session.getAttribute("myState");
				//System.out.println(state);
				try {
					if (state.equals("") || state.equals("tourist")) {
						out.println("<img  src=\"../img/zhu.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>" + "(tourist)" + "</p>");
					} else if (state.equals("teacher")) {
						out.println("<img  src=\"../img/horse.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>(" + state + ")</p>");
					} else if (state.equals("student")) {
						out.println(
								"<img  src=\"../img/tuanzi.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
						out.println("<br>");
						out.println("<p>(" + state + ")</p>");
					}
				} catch (Exception e) {
					out.println("<img  src=\"../img/zhu.jpg\" style=\"border-radius: 50%;width:70px;height:70px;\">");
					out.println("<br>");
					out.println("<p>" + "(tourist)" + "</p>");
				}
			%>
		</div>

	</div>

	<!-- ======================================= -->
	<!-- ======================================= -->
	<!-- 左侧功能列表 -->
	<div class="menu">

		<div>
			<p onclick="accordion(1)">登陆</p>
			<ul id="ul1">
				<li><a href="../jsp/teacherLogin.jsp">老师登录</a></li>
				<li><a href="../jsp/studentLogin.jsp">学生登录</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(2)">添加作业</p>
			<ul id="ul2">
				<li><a
					href="../jsp/addHomework.jsp">添加作业</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(3)">添加学生</p>
			<ul id="ul3">
				<li><a
					href="../jsp/addStudent.jsp">添加学生</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(4)">查看作业</p>
			<ul id="ul4">
				<li><a
					href="../jsp/checkHomework.jsp">查看作业</a></li>
			</ul>
		</div>
		<div>
			<p onclick="accordion(5)">提交作业</p>
			<ul id="ul5">
				<li><a href="../jsp/submitHomework.jsp">提交作业</a></li>
			</ul>
		</div>
		
	</div>


	<!-- ======================================= -->
	<!-- ======================================= -->
	<!-- 返回图标 -->
	<div class="turnback">
		<a href="../jsp/index.jsp"><img
			style="height: 120px; width: 120px; border-radius: 50%;"
			src="../img/turnback1.jpg"></a>
	</div>


	




</body>
</html>