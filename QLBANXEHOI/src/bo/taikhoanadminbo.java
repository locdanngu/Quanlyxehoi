package bo;

import dao.taikhoanadmindao;

public class taikhoanadminbo {
	taikhoanadmindao tkaddao = new taikhoanadmindao();
	public int getdoanhthu() {
		return tkaddao.getdoanhthu();
	}
}
