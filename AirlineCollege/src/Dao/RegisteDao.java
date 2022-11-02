package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Dto.Member;

public class RegisteDao {
	private String dburl = "jdbc:mysql://localhost:3306/AirlineProject";
	private String dbuname = "root";
	private String dbpwd = "root";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";

	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbuname, dbpwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public String insert(Member member) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Registration Successfull";
		String sql = "insert into register values(?,?,?)";

		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getName());
			ps.setString(2, member.getEmail());
			ps.setString(3, member.getPassword());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result = "Registration Failed";
		}
		
		return result;
	}
}
