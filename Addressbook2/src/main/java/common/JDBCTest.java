package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTest {

	public static void main(String[] args) {
		Connection conn = null;

		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521/xe";
		String username = "jweb";
		String password = "pwjwdb";

		try {
			Class.forName(driverClass);
			String user = null;
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("db 연결 성공: " + conn);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
	}
}
