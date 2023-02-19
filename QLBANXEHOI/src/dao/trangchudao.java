package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.hangbean;
import bean.trangchubean;

public class trangchudao {
	public ArrayList<trangchubean> getxenoibat(){
		try {
			ArrayList<trangchubean> dsxenoibat= new ArrayList<trangchubean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select top(3) MaXe, TenXe, SoLuong, Gia, Anh,NgayNhap,XE.MaHangXe, TenHangXe, AnhHangXe From HANGXE join XE on HANGXE.MaHangXe=Xe.MaHangXe order by DaBan DESC";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maxe = rs.getString("MaXe");
				String tenxe = rs.getString("TenXe");
				long soluong = rs.getLong("SoLuong");
				long gia = rs.getLong("Gia");
				String anh = rs.getString("Anh");
				String ngaynhap = rs.getString("NgayNhap");
				String mahangxe = rs.getString("MaHangXe");
				String tenhangxe = rs.getString("TenHangXe");
				String anhhangxe = rs.getString("AnhHangXe");
				dsxenoibat.add(new trangchubean(maxe, tenxe, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe, anhhangxe));
			}
			rs.close();
			cs.cn.close();   
			return dsxenoibat;
		}catch(Exception e) {
			   e.printStackTrace();
			   return null;
		}
	}
	
	public ArrayList<trangchubean> getxemoinhat(){
		try {
			ArrayList<trangchubean> dsxemoinhat= new ArrayList<trangchubean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select top(2) MaXe, TenXe, SoLuong, Gia, Anh,NgayNhap,XE.MaHangXe, TenHangXe, AnhHangXe From HANGXE join XE on HANGXE.MaHangXe=Xe.MaHangXe order by NgayNhap DESC";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maxe = rs.getString("MaXe");
				String tenxe = rs.getString("TenXe");
				long soluong = rs.getLong("SoLuong");
				long gia = rs.getLong("Gia");
				String anh = rs.getString("Anh");
				String ngaynhap = rs.getString("NgayNhap");
				String mahangxe = rs.getString("MaHangXe");
				String tenhangxe = rs.getString("TenHangXe");
				String anhhangxe = rs.getString("AnhHangXe");
				dsxemoinhat.add(new trangchubean(maxe, tenxe, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe, anhhangxe));
			}
			rs.close();
			cs.cn.close();   
			return dsxemoinhat;
		}catch(Exception e) {
			   e.printStackTrace();
			   return null;
		}
	}
	
	public ArrayList<trangchubean> getxerenhat(){
		try {
			ArrayList<trangchubean> dsxerenhat= new ArrayList<trangchubean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select top(5) MaXe, TenXe, SoLuong, Gia, Anh,NgayNhap,XE.MaHangXe, TenHangXe, AnhHangXe From HANGXE join XE on HANGXE.MaHangXe=Xe.MaHangXe order by Gia ASC";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maxe = rs.getString("MaXe");
				String tenxe = rs.getString("TenXe");
				long soluong = rs.getLong("SoLuong");
				long gia = rs.getLong("Gia");
				String anh = rs.getString("Anh");
				String ngaynhap = rs.getString("NgayNhap");
				String mahangxe = rs.getString("MaHangXe");
				String tenhangxe = rs.getString("TenHangXe");
				String anhhangxe = rs.getString("AnhHangXe");
				dsxerenhat.add(new trangchubean(maxe, tenxe, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe, anhhangxe));
			}
			rs.close();
			cs.cn.close();   
			return dsxerenhat;
		}catch(Exception e) {
			   e.printStackTrace();
			   return null;
		}
	}
}
