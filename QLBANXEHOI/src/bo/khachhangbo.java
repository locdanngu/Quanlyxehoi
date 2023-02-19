package bo;

import java.util.ArrayList;

import bean.hangbean;
import bean.khachhangbean;
import dao.hangdao;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	ArrayList<khachhangbean> kh;
	
	public ArrayList<khachhangbean> getkhachhang(String tendn){
		kh = khdao.getkhachhang(tendn);
		return kh;
	}
}
