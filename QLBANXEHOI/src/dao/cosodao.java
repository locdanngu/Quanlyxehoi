package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class cosodao {
	public Connection cn;

	public void KetNoi() {
		// b1: Xac dinh he qtcsdl
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			cn = DriverManager
					.getConnection("jdbc:sqlserver://LAPTOP-QULS93NH:1433;databaseName=QLXEHOI;user=sa; password=123");

			//System.out.println("2");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] ts) {

		cosodao cs = new cosodao();
		cs.KetNoi();
	}
}
