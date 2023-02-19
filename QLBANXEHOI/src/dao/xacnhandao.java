package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.xacnhanbean;
import bean.xebean;

public class xacnhandao {
	public ArrayList<xacnhanbean> dsxn = new ArrayList<xacnhanbean>();
	public ArrayList<xacnhanbean> getxacnhan(){
		try {
			cosodao cs=new cosodao();
			cs.KetNoi();
			String sql="SELECT CHITIETHOADON.MaHoaDon, MaChiTietHD, MaKH, CHITIETHOADON.MaXe, TenXe, Anh, TenHangXe , HOADON.TenDN, SoLuongMua, Gia, NgayMua, SoLuong, CHITIETHOADON.DaMua\r\n"
					+ "FROM KHACHHANG join HOADON on KHACHHANG.TenDN = HOADON.TenDN \r\n"
					+ "			   join CHITIETHOADON on HOADON.MaHoaDon = CHITIETHOADON.MaHoaDon \r\n"
					+ "			   join XE on CHITIETHOADON.MaXe = XE.MaXe \r\n"
					+ "			   join HANGXE on XE.MaHangXe = HANGXE.MaHangXe\r\n"
					+ "where CHITIETHOADON.DaMua = N'Đợi xác nhận' and HOADON.DaTT = 'True'";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				long mahoadon = rs.getLong("MaHoaDon");
				long machitiethd = rs.getLong("MaChiTietHD");
				long makh = rs.getLong("MaKH");
				long maxe = rs.getLong("MaXe");
				String tenxe = rs.getString("TenXe");
				String anh = rs.getString("Anh");
				String tenhangxe = rs.getString("TenHangXe");
				String tendn = rs.getString("TenDN");
				long soluongmua = rs.getLong("SoLuongMua");
				long gia = rs.getLong("Gia");
				Date ngaymua = rs.getDate("NgayMua");
				long soluongtonkho = rs.getLong("SoLuong");
				dsxn.add(new xacnhanbean(mahoadon, machitiethd, makh, maxe, tenxe, anh, tenhangxe, tendn, soluongmua, gia, ngaymua, soluongtonkho));
				
		   }
		   rs.close();
		   cs.cn.close();   
		   return dsxn;
		}catch(Exception e) {
		   e.printStackTrace();
		   return null;
		}
	}
	
	public int countxn() {
		try {
			cosodao cs=new cosodao();
			cs.KetNoi();
			String sql = "select count (*) from CHITIETHOADON join HOADON on CHITIETHOADON.MaHoaDon = HOADON.MaHoaDon where CHITIETHOADON.DaMua = N'Đợi xác nhận' and DaTT='True'";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
			rs.close();
			cs.cn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int countkxn() {
		try {
			cosodao cs=new cosodao();
			cs.KetNoi();
			String sql = "select count (*) from CHITIETHOADON where DaMua = N'Hết hàng'";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
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
