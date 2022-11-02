package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Dto.LoginDto;

public class LoginDao {
	private String dburl = "jdbc:mysql://localhost:3306/AirlineProject";
	private String dbuname = "root";
	private String dbpwd = "root";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";

	public void LoadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbuname, dbpwd);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return con;
	}

	public boolean validate(LoginDto logindto) {

		LoadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		String sql = "select * from register where email = ? and password = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, logindto.getEmail());
			ps.setString(2, logindto.getPassword());

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}

}