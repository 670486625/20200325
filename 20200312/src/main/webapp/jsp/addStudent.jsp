<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/table.css">
<link rel="stylesheet" href="../css/loginOrRegister.css">
<script src="../js/menu.js"></script>
</head>
<body>

<div class="turnback">
		<a href="../jsp/index.jsp"><img
			style="height: 120px; width: 120px; border-radius: 50%;"
			src="../img/turnback1.jpg"></a>
	</div>

<div class="content" align="center">
		<form action="addStudentCheck.jsp">
			<div class="top">添加学生</div>
			<div class="box">
				<div class="box-input">
					学生名字<input name="username" type="text">
				</div>

			</div>
			<div>
				<input type="submit" class="button" value="添加">
			</div>
		</form>

	</div>

</body>
</html>