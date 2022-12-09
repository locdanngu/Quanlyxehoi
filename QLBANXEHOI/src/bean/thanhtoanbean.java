package bean;

public class thanhtoanbean {
	public String mahoadon;
	public String ngaymua;
	public long sotien;
	public thanhtoanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public thanhtoanbean(String mahoadon, String ngaymua, long sotien) {
		super();
		this.mahoadon = mahoadon;
		this.ngaymua = ngaymua;
		this.sotien = sotien;
	}
	public String getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(String mahoadon) {
		this.mahoadon = mahoadon;
	}
	public String getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(String ngaymua) {
		this.ngaymua = ngaymua;
	}
	public long getSotien() {
		return sotien;
	}
	public void setSotien(long sotien) {
		this.sotien = sotien;
	}
	
	
}
