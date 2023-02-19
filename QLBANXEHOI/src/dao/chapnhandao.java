package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class chapnhandao {
	public int chapnhangiao(long machitiethd) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "UPDATE CHITIETHOADON Set DaMua = N'Xác nhận giao' where MaChiTietHD = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, machitiethd);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int chapnhangiao2(long soluongmua, long maxe) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "UPDATE XE Set SoLuong = SoLuong - ? where MaXe = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, soluongmua);
			cmd.setLong(2, maxe);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int chapnhangiao3(long soluongmua, long maxe) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "UPDATE XE Set DaBan = DaBan + ? where MaXe = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, soluongmua);
			cmd.setLong(2, maxe);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int tuchoigiao(long machitiethd) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "UPDATE CHITIETHOADON Set DaMua = N'Hết hàng' where MaChiTietHD = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, machitiethd);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int tuchoigiao2(long sotien, String tendn) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "update KHACHHANG set TaiKhoan = TaiKhoan + ? from KHACHHANG where TenDN = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, sotien);
			cmd.setString(2, tendn);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	
}
