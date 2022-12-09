package bean;

public class giohangbean {
	private String maxe;
    private String tenxe;
    private long soluong;
    private long gia;
    private long thanhtien;
    private String anh;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String maxe, String tenxe, long soluong, long gia, String anh) {
		super();
		this.maxe = maxe;
		this.tenxe = tenxe;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = soluong*gia;
		this.anh = anh;
	}
	public String getMaxe() {
		return maxe;
	}
	public void setMaxe(String maxe) {
		this.maxe = maxe;
	}
	public String getTenxe() {
		return tenxe;
	}
	public void setTenxe(String tenxe) {
		this.tenxe = tenxe;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return soluong*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
    
    
}
