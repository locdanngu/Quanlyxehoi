package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class dangkydao {

	public int insertTaiKhoan( String hoten, String diachi, String sodt, String email, String tendn, String mk){
		try {
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql ="insert into  KhachHang(HoTen, DiaChi, SoDT, Email, TenDN, Pass, TaiKhoan) values (?,?,?,?,?,?,0)";
			//String sql = "select count(*) from KhachHang where tendn = ? and pass = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, hoten);
			cmd.setString(2, diachi);
			cmd.setString(3, sodt);
			cmd.setString(4, email);
			cmd.setString(5, tendn);
			cmd.setString(6, mk);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
