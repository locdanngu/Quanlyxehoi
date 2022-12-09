package bo;

import java.util.ArrayList;


import bean.xebean;
import dao.xedao;

public class xebo {
	xedao xdao = new xedao();
	ArrayList<xebean> ds;
	public ArrayList<xebean> getxe(){
		ds = xdao.getxe();
		return ds;
	}
	
	public ArrayList<xebean> TimHang(String mahang){
		ArrayList<xebean> tam = new ArrayList<xebean>();
		for(xebean x: ds) {
			if(x.getMahangxe().equals(mahang)) {
				tam.add(x);
			}
		}
		return tam;
	}
	
	public ArrayList<xebean> Tim(String key) {
		ArrayList<xebean> tam = new ArrayList<xebean>();
		for (xebean x : ds)
			if (x.getTenxe().toLowerCase().trim().contains(key.toLowerCase().trim())
					/* || x.getNgaynhap().toLowerCase().trim().contains(key.toLowerCase().trim()) */
					|| x.getMahangxe().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(x);
		return tam;
	}
	
	
	
	public void addxe(String tenxe, long soluong, long gia, long mahangxe, String anh) {
		xdao.addxe(tenxe, soluong, gia, mahangxe, anh);
	}
	
	public void editxe(String addtenxe, long addsoluong, long addgia, long addmahangxe, String addanh, long mx) {
		xdao.editxe(addtenxe, addsoluong, addgia, addmahangxe, addanh, mx);
	}
	
	
	public void deletexe(String xoamaxe) {
		xdao.deletexe(xoamaxe);
	}
	
	public int getTotalCars() {
		return xdao.getTotalCars();
	}
	
	public int countCarsByMaHang(String mh) {
		return xdao.countCarsByMaHang(mh);
	}
	
	public int countCarsBySearchValue(String GTTK) {
		return xdao.countCarsBySearchValue(GTTK);
	}
	
	public ArrayList<xebean> pagingCarsByMaXe(int offset, String mh){
		return xdao.pagingCarsByMaXe(offset, mh);
	}
	
	public ArrayList<xebean> pagingCarsBySearchValue(int offset, String GTTK){
		return xdao.pagingCarsBySearchValue(offset, GTTK);
	}
	
	public ArrayList<xebean> pagingCars(int offset){
		return xdao.pagingCars(offset);
	}
	
	
	
	
	
	
	
	
}
