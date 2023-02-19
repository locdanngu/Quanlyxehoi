package bo;

import dao.chapnhandao;

public class chapnhanbo {
	chapnhandao cndao = new chapnhandao();
	public void chapnhangiao(long machitiethd) {
		cndao.chapnhangiao(machitiethd);
	}
	
	public void chapnhangiao2(long soluongmua, long maxe) {
		cndao.chapnhangiao2(soluongmua,maxe);
	}
	
	public void chapnhangiao3(long soluongmua, long maxe) {
		cndao.chapnhangiao3(soluongmua,maxe);
	}
	
	public void tuchoigiao(long machitiethd) {
		cndao.tuchoigiao(machitiethd);
	}
	
	public void tuchoigiao2(long sotien, String tendn) {
		cndao.tuchoigiao2(sotien, tendn);
	}
}
