<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.ResultSet"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mario" class="jdbc.Mario"  />
	<%
	 request.setCharacterEncoding("UTF-8");
     String Ausername=(String)request.getParameter("username");
     
   //修改表单字符集
   	String username = new String(Ausername.getBytes("ISO-8859-1"),"UTF-8");
     
   //数据库操作
     String sql="select * from teacher";//定义查询语句
     ResultSet rs=mario.executeQuery(sql);//执行sql语句
     //只判断一条数据
     if(rs.next())
     {
         if(username.equals(rs.getObject("teacherName"))){
        	 //设置session
        	 session.setAttribute("myState","teacher");
        	 out.print("<script>alert('登录成功'); window.location='../jsp/index.jsp' </script>");
         }
         else{
        	 out.print("<script>alert('用户名错误2'); window.location='../jsp/teacherLogin.jsp' </script>");
         }
     }else{
    	 out.print("<script>alert('用户名错误'); window.location='../jsp/teacherLogin.jsp' </script>");
     }
		
     mario.closeConnection();
	%>

</body>
</html>