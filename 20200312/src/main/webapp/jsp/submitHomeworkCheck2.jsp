<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		String AhomeworkContent = (String) request.getParameter("homeworkContent");
		
		//修改表单字符集
		String homeworkContent = new String(AhomeworkContent.getBytes("ISO-8859-1"),"UTF-8");
		
		String homeworkNum = (String) session.getAttribute("myHomeworkNum");
		int homeworkNumInt = Integer.parseInt( homeworkNum );
		String name = (String) session.getAttribute("myName");

		//判断空
		boolean notNull = true;
		if (homeworkContent.equals("")) {
			notNull = false;
		}

		if (notNull) {
			//数据库操作
			String sql2 = "insert into studentHomework values("+homeworkNumInt+",'" + name + "','"+homeworkContent+"')";
			int i = mario.executeUpdate(sql2);
			out.print("<script>alert('提交成功'); window.location='../jsp/index.jsp' </script>");
		} else {
			if(!notNull){
				out.print("<script>alert('提交内容不能为空'); window.location='../jsp/staffRegister.jsp' </script>");
			}
		}
		mario.closeConnection();
	%>

</body>
</html>