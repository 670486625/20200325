<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.ResultSet"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mario" class="jdbc.Mario" />
	<%
		request.setCharacterEncoding("UTF-8");

		//获取表单内容
		request.setCharacterEncoding("UTF-8");
		String AhomeworkTitle = (String) request.getParameter("homeworkTitle");
		
		//修改表单字符集
		String homeworkTitle = new String(AhomeworkTitle.getBytes("ISO-8859-1"),"UTF-8");

		//判断空
		boolean notNull = true;
		if (homeworkTitle.equals("")) {
			notNull = false;
		}

		if (notNull) {
			//数据库操作
			String sql2 = "insert into homework values(null,'" + homeworkTitle + "')";
			int i = mario.executeUpdate(sql2);
			out.print("<script>alert('添加作业成功'); window.location='../jsp/index.jsp' </script>");
		} else {
			if(!notNull){
				out.print("<script>alert('作业题目不能为空'); window.location='../jsp/staffRegister.jsp' </script>");
			}
		}
		mario.closeConnection();
	%>


</body>
</html>