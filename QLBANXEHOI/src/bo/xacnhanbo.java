package bo;

import java.util.ArrayList;

import bean.xacnhanbean;
import bean.xebean;
import dao.xacnhandao;
import dao.xedao;

public class xacnhanbo {
	xacnhandao xndao = new xacnhandao();
	ArrayList<xacnhanbean> ds;
	public ArrayList<xacnhanbean> getxacnhan(){
		ds = xndao.getxacnhan();
		return ds;
	}
	
	
	public int countxn(){
		return xndao.countxn();
	}
	
	public int countkxn() {
		return xndao.countkxn();
	}
}
