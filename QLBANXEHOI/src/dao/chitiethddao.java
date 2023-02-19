package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitiethdbean;


public class chitiethddao {
	public int addchitiethd(String maxe, long soluongmua, long mahoadon) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "insert into CHITIETHOADON values(?,?,?,N'Đợi xác nhận')";

			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maxe);
			cmd.setLong(2, soluongmua);
			cmd.setLong(3, mahoadon);
			
			int rs = cmd.executeUpdate();
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public ArrayList<chitiethdbean> getchitiethd(long mahoadon){
		try {
			ArrayList<chitiethdbean> ds = new ArrayList<chitiethdbean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "SELECT MaChiTietHD,XE.MaXe,Anh,TenXe, TenHangXe, SoLuongMua, Gia    FROM CHITIETHOADON join XE on CHITIETHOADON.MaXe = XE.MaXe join HANGXE on XE.MaHangXe = HANGXE.MaHangXe where MaHoaDon = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, mahoadon);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				long machitiethd = rs.getLong("MaChiTietHD");
				long maxe = rs.getLong("MaXe");
				String anh = rs.getString("Anh");
				String tenxe = rs.getString("TenXe");
				String tenhangxe = rs.getString("TenHangXe");
				long soluongmua = rs.getLong("SoLuongMua");
				long gia = rs.getLong("gia");
				ds.add(new chitiethdbean(machitiethd, maxe, tenxe, tenhangxe, anh, gia, soluongmua));
			}
			rs.close();
			cs.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int countmhd() {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql="SELECT MAX(MaHoaDon) From HOADON";
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

	public int deletechitiethd(long mhd) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "delete from CHITIETHOADON where MaHoaDon = ?";

			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, mhd);
			
			int rs = cmd.executeUpdate();
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}


