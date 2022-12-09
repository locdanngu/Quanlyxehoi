package bo;

import java.util.ArrayList;

import bean.thanhtoanbean;
import bean.xebean;
import dao.thanhtoandao;
import dao.xedao;

public class thanhtoanbo {
	thanhtoandao ttdao = new thanhtoandao();
	ArrayList<thanhtoanbean> dstt;
	public ArrayList<thanhtoanbean> gethoadon(String nguoimua){
		dstt = ttdao.gethoadon(nguoimua);
		return dstt;
	}
	
	public void addhoadon(String tendn, String ngaymua, long sotien) {
		ttdao.addhoadon(tendn, ngaymua, sotien);
	}
	
	public void trahoadon(long mahoadon) {
		ttdao.trahoadon(mahoadon);
	}
	
	public void dongythanhtoan(long mahoadon) {
		ttdao.dongythanhtoan(mahoadon);
	}
}
