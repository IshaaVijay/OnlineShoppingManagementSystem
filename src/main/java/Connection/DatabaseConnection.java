package Connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DatabaseConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection con = null;

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manhattan_project", "root", "root");

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {

		ResultSet rs = null;
		try {
			// Checking whether the connection is null or null
			if (con == null) {
				getConnection();
			}
			// Querying the query
			rs = con.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int insertUpdateFromSqlQuery(String SqlQueryString) {
		int i = 2;
		try {
			// Checking whether the connection is null or null
			if (con == null) {
				getConnection();
			}
			// Querying the query
			i = con.createStatement().executeUpdate(SqlQueryString);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return i;

	}
}
