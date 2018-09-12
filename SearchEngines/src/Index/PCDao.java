package Index;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PCDao {

	/*
	 * 提取数据
	 * @return pcList
	 */
	public List searchPC() {
		List pcList = new ArrayList();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/pc", "root", "root");
			PreparedStatement pStat = conn.prepareStatement("select * from pcss");
			ResultSet result = pStat.executeQuery();
			PC pc;
			while (result.next()) {
				pc = new PC();
				pc.setTitle(result.getString("title"));
				pc.setPrice(result.getInt("price"));
				pc.setBrand(result.getString("brand"));
				pc.setTime(result.getString("time"));
				pc.setSize(result.getString("Size"));
				pc.setCPU(result.getString("CPU"));
			    pc.setXiancun(result.getString("xiancun"));
			    pc.setType(result.getString("type"));
			    pc.setComment(result.getString("comment"));
				pc.setUrl(result.getString("url"));
				pc.setImgurl(result.getString("imgurl"));
				pc.setFlag(result.getString("flag"));
				pcList.add(pc);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pcList;
	}
}
