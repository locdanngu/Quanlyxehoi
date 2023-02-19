package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String maXe, String tenXe, long soluong, long gia, String anh) {
		for(giohangbean g : ds) {
			if(g.getMaxe().equals(maXe)) {
				g.setSoluong(soluong+g.getSoluong());
				return;
			}
		}
		ds.add(new giohangbean(maXe, tenXe, soluong, gia, anh));
	}
	
	public long TongTien() {
		long tongtien=0;
		for(giohangbean g : ds) {
			tongtien += g.getThanhtien();
		}
		return tongtien;
	}
	
	public void SuaSoLuong(String maXe, long soluong) {
		for(giohangbean g : ds) {
			if(g.getMaxe().equals(maXe) && g.getSoluong()!=soluong)
				g.setSoluong(soluong);
		}
	}
	
	public void Xoa(String maXe) {
		for (int i = 0; i < ds.size(); i++) {
			if (ds.get(i).getMaxe().equals(maXe)) {
				ds.remove(i);
			}
		}
	}
	
	public void XoaAll() {
		ds.removeAll(ds);
		
	}
}
