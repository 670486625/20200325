package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.Mario;


public class TeacherLogin extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		this.doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Mario mario=new Mario();
		HttpSession session = null;

		request.setCharacterEncoding("UTF-8");
	     String Ausername=(String)request.getParameter("username");
	     
	   //修改表单字符集
	   	String username = new String(Ausername.getBytes("ISO-8859-1"),"UTF-8");
	     
	   //数据库操作
	     String sql="select * from teacher";//定义查询语句
	     ResultSet rs=mario.executeQuery(sql);//执行sql语句
	     //只判断一条数据
	     try {
			if(rs.next())
			 {
			     if(username.equals(rs.getObject("teacherNum"))){
			    	 //设置session
			    	 session.setAttribute("myState","teacher");
			     }
			     else{
			    	 response.sendRedirect(request.getContextPath()+"/jsp/success.jsp?");
			     }
			 }else{
				 //数据库没东西时
			 }
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
			
	     mario.closeConnection();
	}

}
