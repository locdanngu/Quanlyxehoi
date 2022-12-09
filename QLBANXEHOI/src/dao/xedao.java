package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.xebean;
import bean.hangbean;



public class xedao {
	public ArrayList<xebean> dsxe = new ArrayList<xebean>();
		public ArrayList<xebean> getxe(){
			try {
				cosodao cs=new cosodao();
				cs.KetNoi();
				String sql="select MaXe, TenXe, SoLuong, Gia, Anh,NgayNhap,XE.MaHangXe, TenHangXe From HANGXE join XE on HANGXE.MaHangXe=Xe.MaHangXe";
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
					dsxe.add(new xebean(maxe, tenxe, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe));
			   }
			   rs.close();
			   cs.cn.close();   
			   return dsxe;
			}catch(Exception e) {
			   e.printStackTrace();
			   return null;
			}
		}
		
		
		
		
		
		
		public int addxe(String tenxe, long soluong, long gia, long mahangxe, String anh/* , Date ngaynhap */){
			try {
				// B1: káº¿t ná»‘i csdl
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "insert into XE(TenXe,SoLuong,Gia,MaHangXe,Anh) values (?,?,?,?,?)";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, tenxe);
				cmd.setLong(2, soluong);
				cmd.setLong(3, gia);
				cmd.setLong(4, mahangxe);
				cmd.setString(5, "image_xe/" + anh);
				/* cmd.setDate(6, ngaynhap); */
				/*
				 * ResultSet rs = cmd.executeQuery(); // B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y
				 * vá»�
				 * 
				 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
				 * }
				 * 
				 * 
				 * // B4: Ä�Ã³ng rs vÃ  cn rs.close();
				 */
				
				int rs= cmd.executeUpdate();
				
				cs.cn.close();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
		
		
		public int editxe(String addtenxe, long addsoluong, long addgia, long addmahangxe, String addanh, long mx/* , Date ngaynhap */){
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
				/*
				 * ResultSet rs = cmd.executeQuery(); // B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y
				 * vá»�
				 * 
				 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
				 * }
				 * 
				 * 
				 * // B4: Ä�Ã³ng rs vÃ  cn rs.close();
				 */
				
				int rs = cmd.executeUpdate();
				cs.cn.close();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
		
		
		public int deletexe(String xoamaxe) {
			try {
				// B1: káº¿t ná»‘i csdl
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "delete from XE where MaXe=?";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, xoamaxe);
				
				/*
				 * ResultSet rs = cmd.executeQuery(); // B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y
				 * vá»�
				 * 
				 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
				 * }
				 * 
				 * 
				 * // B4: Ä�Ã³ng rs vÃ  cn rs.close();
				 */
				
				int rs = cmd.executeUpdate();
				cs.cn.close();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
		
		
		public int getTotalCars() { //Đếm tất cả xe hiện tại : 102 xe)
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "Select count(*) from XE";
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
		
		public int countCarsByMaHang(String mh) {   //(Đếm số xe trong mã hàng đã chọn)
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "Select count(*) from XE where MaHangXe = ?";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, mh);
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
		
		public int countCarsBySearchValue(String GTTK) {   //Đếm số xe có tên xe gần giống nhập vào)
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "Select count(*) from XE where TenXe like CONCAT('%', ? , '%')";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, GTTK);
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
		
		
		public ArrayList<xebean> pagingCarsByMaXe(int offset, String mh) {      //(Phân trang theo 1 mã hãng xe)
			ArrayList<xebean> dsXe = new ArrayList<xebean>();
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "select MaXe, TenXe, SoLuong, Gia, XE.MaHangXe, Anh, NgayNhap, TenHangXe from XE join HANGXE on XE.MaHangXe = HANGXE.MaHangXe where Xe.MaHangXe = ? order by MaXe offset ? rows fetch next 8 rows only";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, mh);
				cmd.setInt(2, (offset - 1) * 8);
				ResultSet rs = cmd.executeQuery();
				while (rs.next()) {
					String masach = rs.getString("maxe");
					String tensach = rs.getString("tenxe");
					/* String tacgia = rs.getString("tacgia"); */
					long soluong = rs.getLong("soluong");
					long gia = rs.getLong("gia");
					String anh = rs.getString("anh");
					String ngaynhap = rs.getString("NgayNhap");
					String mahangxe = rs.getString("mahangxe");
					String tenhangxe = rs.getString("tenhangxe");
					/* Date ngaynhap = rs.getDate("NgayNhap"); */
					dsXe.add(new xebean(masach, tensach, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe));
				}
				rs.close();
				cs.cn.close();
				return dsXe;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		
		public ArrayList<xebean> pagingCarsBySearchValue(int offset, String GTTK) { //Phân trang theo thông tin nhập vào
			ArrayList<xebean> dsXe = new ArrayList<xebean>();
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "select MaXe, TenXe, SoLuong, Gia, XE.MaHangXe, Anh, NgayNhap, TenHangXe from XE join HANGXE on XE.MaHangXe = HANGXE.MaHangXe where TenXe like CONCAT('%', ? , '%') order by MaXe offset ? rows fetch next 8 rows only";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setString(1, GTTK);
				cmd.setInt(2, (offset - 1) * 8);
				ResultSet rs = cmd.executeQuery();
				while (rs.next()) {
					String masach = rs.getString("maxe");
					String tensach = rs.getString("tenxe");
					/* String tacgia = rs.getString("tacgia"); */
					long soluong = rs.getLong("soluong");
					long gia = rs.getLong("gia");
					String anh = rs.getString("anh");
					String ngaynhap = rs.getString("NgayNhap");
					String mahangxe = rs.getString("mahangxe");
					String tenhangxe = rs.getString("tenhangxe");
					dsXe.add(new xebean(masach, tensach, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe));
				}
				rs.close();
				cs.cn.close();
				return dsXe;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		
		public ArrayList<xebean> pagingCars(int offset) {       //Phân trang chính: tất cả xe)
			ArrayList<xebean> dsXe = new ArrayList<xebean>();
			try {
				cosodao cs = new cosodao();
				cs.KetNoi();
				String sql = "select MaXe, TenXe, SoLuong, Gia, XE.MaHangXe, Anh, NgayNhap, TenHangXe from XE join HANGXE on XE.MaHangXe = HANGXE.MaHangXe order by MaXe offset ? rows fetch next 8 rows only";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				cmd.setInt(1, (offset - 1) * 8);
				ResultSet rs = cmd.executeQuery();
				while (rs.next()) {
					String masach = rs.getString("maxe");
					String tensach = rs.getString("tenxe");
					/* String tacgia = rs.getString("tacgia"); */
					long soluong = rs.getLong("soluong");
					long gia = rs.getLong("gia");
					String anh = rs.getString("anh");
					String ngaynhap = rs.getString("NgayNhap");
					String mahangxe = rs.getString("mahangxe");
					String tenhangxe = rs.getString("tenhangxe");
					dsXe.add(new xebean(masach, tensach, soluong, gia, anh, ngaynhap, mahangxe, tenhangxe));
				}
				rs.close();
				cs.cn.close();
				return dsXe;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
}
