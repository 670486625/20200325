<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="../jsp/register.jsp">注册</a>

<form action="demo" method="post">
			<div class="top">老师登录</div>
			<div class="box">
				<div class="box-input">
					用户名<input name="userName" type="text">
				</div>

			</div>
			<div class="box">
				<div class="box-input">
					密码<input name="userPassword" type="password">
				</div>
			</div>
			<div>
				<input type="submit" class="button" value="登录">
			</div>
		</form>

</body>
</html>