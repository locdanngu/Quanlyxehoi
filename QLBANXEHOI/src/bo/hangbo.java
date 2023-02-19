package bo;

import dao.hangdao;

import java.util.ArrayList;

import bean.hangbean;
import bean.xebean;

public class hangbo {
	hangdao hdao = new hangdao();
	ArrayList<hangbean> ds;
	
	public ArrayList<hangbean> gethang(){
		ds = hdao.gethang();
		return ds;
	}
	
	public void addhangxe(String tenhangxe, String anhhangxe) {
		hdao.addhangxe(tenhangxe, anhhangxe);
	}
	
	public void edithangxe(String tenhangxemoi, String anhhangxemoi, String mahangxe) {
		hdao.edithangxe(tenhangxemoi, anhhangxemoi, mahangxe);
	}
	
	public void deletehangxe(String mhx) {
		hdao.deletehangxe(mhx);
	}
	
	
	public int counthx() {
		return hdao.counthx();
	}
}
