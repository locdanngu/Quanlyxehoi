package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.thanhtoanbean;
import bean.xebean;

public class thanhtoandao {
	
	public ArrayList<thanhtoanbean> gethoadon(String nguoimua){
		try {
			ArrayList<thanhtoanbean> dstt = new ArrayList<thanhtoanbean>();
			cosodao cs=new cosodao();
			cs.KetNoi();
			String sql="select MaHoaDon, NgayMua, SoTien from HOADON where (DaTT='False' and TenDN =?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, nguoimua); ;
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String mahoadon = rs.getString("mahoadon");
				String ngaymua = rs.getString("ngaymua");
				long sotien = rs.getLong("sotien");
				dstt.add(new thanhtoanbean(mahoadon, ngaymua, sotien));
		   }
		   rs.close();
		   cs.cn.close();   
		   return dstt;
		}catch(Exception e) {
		   e.printStackTrace();
		   return null;
		}
	}
	
	
	public int addhoadon(String tendn, String ngaymua, long sotien ) {
		try {
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "insert into HOADON(TenDN, NgayMua, DaMua, SoTien, DaTT) values(?, ?, 'False', ?, 'False')";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, ngaymua);
			cmd.setLong(3, sotien);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int trahoadon(long mahoadon) {
		try {
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "delete From HOADON where MaHoaDon = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			
		
			cmd.setLong(1, mahoadon);
			int rs= cmd.executeUpdate();
			
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int dongythanhtoan(long mahoadon) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "Update HOADON Set DaTT ='True' where MaHoaDon = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, mahoadon);
			int rs = cmd.executeUpdate();
			cs.cn.close();
			return rs;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
