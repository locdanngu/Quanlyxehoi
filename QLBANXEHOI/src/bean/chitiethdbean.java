package bean;

public class chitiethdbean {
	public long machitiethd;
	/* public long mahd; */
	public long maxe;
	public String tenxe;
	public String tenhangxe;
	public String anh;
	public long gia;
	public long soluongmua;
	public long thanhtien;
	public chitiethdbean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public chitiethdbean(
			long machitiethd/* , long mahd */, long maxe, String tenxe, String tenhangxe, String anh, long gia, long soluongmua) {
		super();
		this.machitiethd = machitiethd;
		/* this.mahd = mahd; */
		this.maxe = maxe;
		this.tenxe = tenxe;
		this.tenhangxe = tenhangxe;
		this.anh = anh;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = soluongmua*gia;
	}
	public long getMachitiethd() {
		return machitiethd;
	}
	public void setMachitiethd(long machitiethd) {
		this.machitiethd = machitiethd;
	}

	/*
	 * public long getMahd() { return mahd; } public void setMahd(long mahd) {
	 * this.mahd = mahd; }
	 */
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
	public String getTenhangxe() {
		return tenhangxe;
	}
	public void setTenhangxe(String tenhangxe) {
		this.tenhangxe = tenhangxe;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getThanhtien() {
		return soluongmua*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	
	
	
	
}
