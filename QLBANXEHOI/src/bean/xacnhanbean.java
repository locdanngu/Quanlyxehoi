package bean;

import java.sql.Date;

public class xacnhanbean {
	public long mahoadon;
	public long machitiethd;
	public long makh;
	public long maxe;
	public String tenxe;
	public String anh;
	public String tenhangxe;
	public String tendn;
	public long soluongmua;
	public long gia;
	public long thanhtien;
	public Date ngaymua;
	public long soluongtonkho;
	public xacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public xacnhanbean(long mahoadon, long machitiethd, long makh, long maxe, String tenxe, String anh,
			String tenhangxe, String tendn, long soluongmua, long gia, Date ngaymua,
			long soluongtonkho) {
		super();
		this.mahoadon = mahoadon;
		this.machitiethd = machitiethd;
		this.makh = makh;
		this.maxe = maxe;
		this.tenxe = tenxe;
		this.anh = anh;
		this.tenhangxe = tenhangxe;
		this.tendn = tendn;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.thanhtien = soluongmua*gia;
		this.ngaymua = ngaymua;
		this.soluongtonkho = soluongtonkho;
	}
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public long getMachitiethd() {
		return machitiethd;
	}
	public void setMachitiethd(long machitiethd) {
		this.machitiethd = machitiethd;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public long getMaxe() {
		return maxe;
	}
	public void setMaxe(long maxe) {
		this.maxe = maxe;
	}
	public String getTenxe() {
		return tenxe;
	}
	public void setTenxe(String tenxe) {
		this.tenxe = tenxe;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getTenhangxe() {
		return tenhangxe;
	}
	public void setTenhangxe(String tenhangxe) {
		this.tenhangxe = tenhangxe;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
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
	public long getSoluongtonkho() {
		return soluongtonkho;
	}
	public void setSoluongtonkho(long soluongtonkho) {
		this.soluongtonkho = soluongtonkho;
	}
	
	
}
