package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitiethdbean;
import bean.khachhangbean;

public class khachhangdao {
	public ArrayList<khachhangbean> getkhachhang(String tendn){
		try {
			ArrayList<khachhangbean> dskh = new ArrayList<khachhangbean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "SELECT MaKH, HoTen, DiaChi, SoDT, Email, Pass, TaiKhoan\r\n"
					+ "from KHACHHANG\r\n"
					+ "where TenDN = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				long makh = rs.getLong("MaKH");
				String hoten = rs.getString("HoTen");
				String diachi = rs.getString("DiaChi");
				String sodt = rs.getString("SoDT");
				String email = rs.getString("Email");
				/* String tendn = rs.getString("TenDN"); */
				String pass = rs.getString("Pass");
				long taikhoan = rs.getLong("TaiKhoan");
				dskh.add(new khachhangbean(makh, hoten, diachi, sodt, email, pass, taikhoan));
			}
			rs.close();
			cs.cn.close();
			return dskh;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
