package bo;

import dao.taikhoandao;

public class taikhoanbo {

	taikhoandao tk = new taikhoandao();
	public int getTaiKhoan(String tendn, String mk){
		return tk.getTaiKhoan(tendn, mk);
	}
}
