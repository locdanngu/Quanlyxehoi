package bo;

import java.util.ArrayList;

import bean.hangbean;
import bean.lichsubean;
import dao.lichsudao;

public class lichsubo {
	lichsudao lsdao = new lichsudao();
	ArrayList<lichsubean> ds;
	
	public ArrayList<lichsubean> getlichsu(String tendn){
		ds = lsdao.getlichsu(tendn);
		return ds;
	}
}
