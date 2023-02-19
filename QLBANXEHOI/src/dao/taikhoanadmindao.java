package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class taikhoanadmindao {

	public int getTaiKhoan(String tendn, String mk){
		try {	
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select count(*) from DANGNHAP where TenDangNhap = ? and MatKhau =? ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, mk);
			ResultSet rs = cmd.executeQuery();
			// B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y vá»�
			while (rs.next()) {
				return rs.getInt(1);
				//System.out.println(rs.getInt(1));
			}

			// B4: Ä�Ã³ng rs vÃ  cn
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public int getdoanhthu() { //Đếm tất cả xe hiện tại : 102 xe)
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select Sum(SoLuongMua*Gia) from CHITIETHOADON join XE on CHITIETHOADON.MaXe = XE.MaXe where DaMua = N'Xác nhận giao' ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
			rs.close();
			cs.cn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
}
