package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.hangbean;

public class hangdao {
	public ArrayList<hangbean> gethang(){
		try {
			ArrayList<hangbean> dshang= new ArrayList<hangbean>();
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "select * from HANGXE";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String mahangxe = rs.getString("MaHangXe");
				String tenhangxe = rs.getString("TenHangXe");
				String anhhangxe = rs.getString("AnhHangXe");
				dshang.add(new hangbean(mahangxe, tenhangxe, anhhangxe));
			}
			rs.close();
			cs.cn.close();   
			return dshang;
		}catch(Exception e) {
			   e.printStackTrace();
			   return null;
		}
	}
	
	
	
	
	
	
	public int addhangxe(String tenhangxe, String anhhangxe){
		try {
			// B1: káº¿t ná»‘i csdl
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "insert into HANGXE(TenHangXe,AnhHangXe) values (?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tenhangxe);
			cmd.setString(2, "image_hangxe/" +anhhangxe);
			/* cmd.setDate(6, ngaynhap); */
			int rs = cmd.executeUpdate();
			// B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y vá»�
			/*
			 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
			 * }
			 */
			

			// B4: Ä�Ã³ng rs vÃ  cn
			/* rs.close(); */
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public int edithangxe(String tenhangxemoi, String anhhangxemoi, String mahangxe) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "UPDATE HANGXE Set TenHangXe = ? , AnhHangXe=? where MaHangXe = ?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, tenhangxemoi);
			cmd.setString(2, "image_hangxe/" +anhhangxemoi);
			cmd.setString(3, mahangxe);
			/* cmd.setDate(6, ngaynhap); */
			int rs = cmd.executeUpdate();
			// B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y vá»�
			/*
			 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
			 * }
			 */
			

			// B4: Ä�Ã³ng rs vÃ  cn
			/* rs.close(); */
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int deletehangxe(String mhx) {
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "delete HANGXE where MaHangXe=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, mhx);
			
			/* cmd.setDate(6, ngaynhap); */
			int rs = cmd.executeUpdate();
			// B3: Duyá»‡t qua táº­p dá»¯ liá»‡u láº¥y vá»�
			/*
			 * while (rs.next()) { return rs.getInt(1); //System.out.println(rs.getInt(1));
			 * }
			 */
			

			// B4: Ä�Ã³ng rs vÃ  cn
			/* rs.close(); */
			cs.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int counthx() { //Đếm tất cả hãng xe hiện tại : 15 hãng xe)
		try {
			cosodao cs = new cosodao();
			cs.KetNoi();
			String sql = "Select count(*) from HANGXE";
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
}
