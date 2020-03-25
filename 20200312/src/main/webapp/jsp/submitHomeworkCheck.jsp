<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		     String AhomeworkNum=(String)request.getParameter("id");
		   //修改表单字符集
		     String homeworkNum = new String(AhomeworkNum.getBytes("ISO-8859-1"),"UTF-8");
		     session.setAttribute("myHomeworkNum",homeworkNum);
            %>

<div class="content" align="center">
		<form action="submitHomeworkCheck2.jsp">
			<div class="top">提交作业</div>
			<br>
			<div class="box">
				<div class="box-input">提交内容</div>
				<textarea name="homeworkContent"
					style="width: 500px; height: 300px;"></textarea>
			</div>

			<div>
				<input type="submit" class="button" value="提交">
			</div>
			<br> <br> <br>
		</form>
	</div>

</body>
</html>