package bo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
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
					)
				tam.add(x);
		return tam;
	}
	
	
	public ArrayList<xebean> Tim2(String tenhangxe){
		ArrayList<xebean> tam = new ArrayList<xebean>();
		for(xebean x: ds) {
			if(x.getTenhangxe().equals(tenhangxe)) {
				tam.add(x);
			}
		}
		return tam;
	}
	
	/*
	 * public ArrayList<xebean> Tim3(String mahangxe, String GTTK){
	 * ArrayList<xebean> tam = new ArrayList<xebean>(); for(xebean x: ds) {
	 * if(x.getTenhangxe().equals(mahangxe) &&
	 * x.getTenxe().toLowerCase().trim().contains(GTTK.toLowerCase().trim())) {
	 * tam.add(x); } } return tam; }
	 * 
	 * public ArrayList<xebean> Tim4(String GTTK){ ArrayList<xebean> tam = new
	 * ArrayList<xebean>(); for(xebean x: ds) {
	 * if(x.getTenxe().toLowerCase().trim().contains(GTTK.toLowerCase().trim())) {
	 * tam.add(x); } } return tam; }
	 */
	
	
	public void addxe(String tenxe, long soluong, long gia, long mahangxe, String anh, Date ngaynhap) {
		xdao.addxe(tenxe, soluong, gia, mahangxe, anh,ngaynhap);
	}
	
	public void editxe(String addtenxe, long addsoluong, long addgia, long addmahangxe, String addanh, Date ngaynhap, long mx) {
		xdao.editxe(addtenxe, addsoluong, addgia, addmahangxe, addanh, ngaynhap, mx);
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
	
	public ArrayList<xebean> pagingCarsByMaXe(String mh, int offset){
		return xdao.pagingCarsByMaXe(mh, offset);
	}
	
	public ArrayList<xebean> pagingCarsBySearchValue(int offset, String GTTK){
		return xdao.pagingCarsBySearchValue(offset, GTTK);
	}
	
	public ArrayList<xebean> pagingCars(int offset){
		return xdao.pagingCars(offset);
	}
	
	
	
	
	
	
	
	
}
