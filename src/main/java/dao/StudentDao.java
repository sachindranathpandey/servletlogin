package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DatabaseConnection;
import entity.Student;

public class StudentDao {

	Student student;
	static Connection con;

	public StudentDao(Student student) {
		this.student = student;
	}

	public static void insertRecord(Student std) throws SQLException {

		try {
			if (checkUserInDb(std)) {

				return;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			con = DatabaseConnection.initializeDatabase();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String SQL_INSERT = "INSERT INTO STUDENT (NAME, EMAIL, PASSWORD) VALUES (?,?,?)";
		PreparedStatement preparedStatement = con.prepareStatement(SQL_INSERT);
		preparedStatement.setString(1, std.getName());
		preparedStatement.setString(2, std.getEmail());
		preparedStatement.setString(3, std.getPassword());
		int row = preparedStatement.executeUpdate();

		// rows affected

	}

	public static boolean checkUserInDb(Student std) throws SQLException {
		try {
			con = DatabaseConnection.initializeDatabase();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean flage = false;
		String SQL_SELECT = "SELECT * FROM STUDENT";
		String email = std.getEmail();

		PreparedStatement preparedStatement = con.prepareStatement(SQL_SELECT);
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {

			String registered_email = resultSet.getString("email");

			if (registered_email.equals(email)) {
				flage = true;
				break;
			}

		}
		return flage;
	}

	public static String userLogin(Student std) {
		String message = "Login Error";
		try {
			con = DatabaseConnection.initializeDatabase();
			String SQL_SELECT = "SELECT * FROM STUDENT";
			String email = std.getEmail();
			String password = std.getPassword();

			PreparedStatement preparedStatement = con.prepareStatement(SQL_SELECT);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				String db_email = resultSet.getString("email");
				String db_password = resultSet.getString("password");

				if (checkUserInDb(std)) {

					if (password.equals(db_password) && email.equals(db_email)) {

						message = "success";
					}

				} else {

					message = "This email is not registered";
				}

			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return message;

	}

	public static String getStudentInfo(String email) {
		String name = null;
		try {
			con = DatabaseConnection.initializeDatabase();
			String sqlQuery = "SELECT name FROM student WHERE email = ?";
			String emailToSearch = email;
			PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
			preparedStatement.setString(1, emailToSearch);

			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				// Retrieve the name from the result set
				name = resultSet.getString("name");

				// Process the retrieved name as needed

			} else {

			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return name;

	}

}
