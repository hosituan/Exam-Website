package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Question;
import BEAN.User;
import project.connectdb.ConnectDatabase;

public class GetQuestion {
	public List<Question> GetQuest(int socau, String type, int mamon) {
		List<Question> lQuests = new ArrayList<>();

		String sql = "select * from questions where type='"+type+"' and idClass= "+ mamon;
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Question q= new Question();
				q.setID(rs.getInt("idQuestions"));
				q.setQuestname(rs.getString("questName"));
				q.setA(rs.getString("a"));
				q.setB(rs.getString("b"));
				q.setC(rs.getString("c"));
				q.setD(rs.getString("d"));
				lQuests.add(q);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lQuests;
	}

}
