package bo;

import java.util.ArrayList;

import bean.hangbean;
import bean.trangchubean;
import dao.hangdao;
import dao.trangchudao;

public class trangchubo {
	trangchudao tcdao = new trangchudao();
	ArrayList<trangchubean> dstc;
	
	public ArrayList<trangchubean> getxenoibat(){
		dstc = tcdao.getxenoibat();
		return dstc;
	}
	
	public ArrayList<trangchubean> getxemoinhat(){
		dstc = tcdao.getxemoinhat();
		return dstc;
	}
	
	public ArrayList<trangchubean> getxerenhat(){
		dstc = tcdao.getxerenhat();
		return dstc;
	}
	
}
