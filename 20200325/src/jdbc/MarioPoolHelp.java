package jdbc;

import javax.servlet.http.HttpServlet;

public class MarioPoolHelp extends HttpServlet{
	
	public static MarioPool marioPool;
	
	public void init(){
		marioPool=new MarioPool();
		
        System.out.println("�������ݿ����ӳ�");
}

}
