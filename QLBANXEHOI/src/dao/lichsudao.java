package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.lichsubean;

public class lichsudao {
	public ArrayList<lichsubean> getlichsu(String tendn){
		try {
			ArrayList<lichsubean> dslichsu= new ArrayList<lichsubean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "Select MaChiTietHD, HOADON.MaHoaDon, XE.MaXe, Anh, TenXe, SoLuongMua, Gia, NgayMua, CHITIETHOADON.DaMua  \r\n"
					+ "from CHITIETHOADON join HOADON on CHITIETHOADON.MaHoaDon = HOADON.MaHoaDon join XE on CHITIETHOADON.MaXe = XE.Maxe\r\n"
					+ "where TenDN = ? and DaTT = 'True'";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				long machitiethd = rs.getLong("MaChiTietHD");
				long mahoadon = rs.getLong("MaHoaDon");
				long maxe = rs.getLong("MaXe");
				String anh = rs.getString("Anh");
				String tenxe = rs.getString("TenXe");
				long soluongmua = rs.getLong("SoLuongMua");
				long gia = rs.getLong("Gia");
				Date ngaymua = rs.getDate("NgayMua");
				String damua = rs.getString("DaMua");
				dslichsu.add(new lichsubean(machitiethd, mahoadon, maxe, anh, tenxe, soluongmua, gia, gia, ngaymua, damua));
			}
			rs.close();
			cs.cn.close();   
			return dslichsu;
		}catch(Exception e) {
			   e.printStackTrace();
			   return null;
		}
	}
}
