package com.test.ex;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/* DB를 접속할 때 사용하는 클래스 */
public class MemberDAO {
	private DataSource ds;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle11g");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
public ArrayList<MemberDTO> selectMember() {
		Connection dbcon = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from member";
		
		while(rs.next()) {
			String name = rs.getString("name");
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String hp1 = rs.getString("hp1");
			String hp2 = rs.getString("hp2");
			String hp3 = rs.getString("hp3");
			String gender = rs.getString("gender");
			
			MemberDTO mdto = new MemberDTO(name, id, pw, hp1, hp2, hp3, gender);
			mdtos.add(mdto);
		}
		
		return mdtos;
	}
}
