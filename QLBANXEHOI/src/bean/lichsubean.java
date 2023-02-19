package bean;

import java.sql.Date;

public class lichsubean {
	public long machitiethd;
	public long mahoadon;
	public long maxe;
	public String anh;
	public String tenxe;
	public long soluongmua;
	public long gia;
	public long thanhtien;
	public Date ngaymua;
	public String damua;
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsubean(long machitiethd, long mahoadon, long maxe, String anh, String tenxe, long soluongmua, long gia,
			long thanhtien, Date ngaymua, String damua) {
		super();
		this.machitiethd = machitiethd;
		this.mahoadon = mahoadon;
		this.maxe = maxe;
		this.anh = anh;
		this.tenxe = tenxe;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.thanhtien = soluongmua*gia;
		this.ngaymua = ngaymua;
		this.damua = damua;
	}
	public long getMachitiethd() {
		return machitiethd;
	}
	public void setMachitiethd(long machitiethd) {
		this.machitiethd = machitiethd;
	}
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public long getMaxe() {
		return maxe;
	}
	public void setMaxe(long maxe) {
		this.maxe = maxe;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getTenxe() {
		return tenxe;
	}
	public void setTenxe(String tenxe) {
		this.tenxe = tenxe;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return soluongmua*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public String getDamua() {
		return damua;
	}
	public void setDamua(String damua) {
		this.damua = damua;
	}
	
}
