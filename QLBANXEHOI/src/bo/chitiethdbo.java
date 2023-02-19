package bo;

import dao.chitiethddao;
import java.util.ArrayList;

import bean.chitiethdbean;
public class chitiethdbo {
	chitiethddao ctdao = new chitiethddao();
	public void addchitiethd(String mx, long soluongmua, long mahoadon) {
		ctdao.addchitiethd(mx, soluongmua, mahoadon);
	}
	ArrayList<chitiethdbean> ds;
	public ArrayList<chitiethdbean> getchitiethd(long mahoadon){
		ds = ctdao.getchitiethd(mahoadon);
		return ds;
	}
	
	public int countmhd() {
		return ctdao.countmhd();
	}


}
