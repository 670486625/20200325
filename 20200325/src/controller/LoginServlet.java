package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import jdbc.Mario;
import jdbc.MarioPool;
import jdbc.MarioPoolHelp;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置响应内容类型
		doPost(request, response);
		System.out.println("doGet");
		
		
	}
	

	// 处理 POST 方法请求的方法
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		String username = request.getParameter("userName");
		String password = request.getParameter("userPassword");
		String newUsername = new String(username.getBytes("ISO-8859-1"),"UTF-8");
		String newPassword = new String(password.getBytes("ISO-8859-1"),"UTF-8");
		
		
		//数据库操作
		//Mario mario=new Mario();
		int i=MarioPoolHelp.marioPool.getMario();
		if(i!=99) {
			String sql="select * from member where memberName="+"'"+username+"'";//定义查询语句
		     ResultSet rs=MarioPoolHelp.marioPool.marioArray[i].executeQuery(sql);//执行sql语句
		     //只判断一条数据
		     try {
				if(rs.next())
				 {
				     if(newPassword.equals(rs.getObject("memberPassword"))){
				    	 //设置session
				    	 HttpSession session = request.getSession();
				    	 session.setAttribute("myName", newUsername);
				    	 
				     }
				     else{
				    	// out.print("<script>alert('密码错误'); window.location='../jsp/administratorLogin.jsp' </script>");
				     }
				 }else{
					 //out.print("<script>alert('无此账号'); window.location='../jsp/administratorLogin.jsp' </script>");
				 }
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			
			request.setAttribute("name",newUsername);
			request.getRequestDispatcher("/jsp/successfulPage.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/jsp/falsePage.jsp").forward(request, response);
		}
	     
		
	}
}
