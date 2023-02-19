package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class chinhsuaxedao {
	public int tdxe(String addtenxe, long addsoluong, long addgia, long addmahangxe, String addanh, long mx/* , Date ngaynhap */){
		try {
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "update XE set TenXe = ?, SoLuong = ? , Gia = ?, MaHangXe = ? , Anh = ? where MaXe = ? ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, addtenxe);
			cmd.setLong(2, addsoluong);
			cmd.setLong(3, addgia);
			cmd.setLong(4, addmahangxe);
			cmd.setString(5, "image_xe/" + addanh);
			/* cmd.setDate(6, ngaynhap); */
			cmd.setLong(6, mx);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
