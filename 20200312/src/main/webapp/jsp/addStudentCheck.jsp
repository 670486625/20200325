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
		String Ausername = (String) request.getParameter("username");
		
		//修改表单字符集
		String username = new String(Ausername.getBytes("ISO-8859-1"),"UTF-8");

		//判断空
		boolean notNull = true;
		if (username.equals("")) {
			notNull = false;
		}

		if (notNull) {
			//数据库操作
			String sql2 = "insert into student values(null,'" + username + "')";
			int i = mario.executeUpdate(sql2);
			out.print("<script>alert('添加成功'); window.location='../jsp/index.jsp' </script>");
		} else {
			if(!notNull){
				out.print("<script>alert('学生姓名不能为空'); window.location='../jsp/staffRegister.jsp' </script>");
			}
		}
		mario.closeConnection();
	%>

</body>
</html>