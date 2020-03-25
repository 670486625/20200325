package jdbc;

import javax.servlet.http.HttpServlet;

public class MarioPool extends HttpServlet {
	public Mario[] marioArray;
	public int[] marioArrayAvailable;
	
	
	
	public MarioPool() {
		marioArray=new Mario[20];
		marioArrayAvailable=new int[20];
		
		for(int i=0;i<20;i++) {
			marioArray[i]=new Mario();
		}
		
		for(int i=0;i<20;i++) {
			marioArrayAvailable[i]=1;
		}
	}

	
	
	public int getMario() {
		boolean haveMario=false;
		int indexOfMario=99;
		
		for(int i=0;i<20;i++) {
			if(marioArrayAvailable[i]==1) {
				haveMario=true;
				marioArrayAvailable[i]=0;
				indexOfMario=i;
				break;
			}
		}
		
		if(haveMario) {
			System.out.println("�ṩ����"+indexOfMario+"��Mario");
		}else {
			System.out.println("û�ÿ����ӵ�Mario��");
		}
		
		return indexOfMario;
	}
	
	public void returnMario(int i) {
		marioArrayAvailable[i]=1;
		System.out.println("�ջ�"+i+"��Mario��");
	}

}
