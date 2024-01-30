package db;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 

// This class can be used to initialize the database connection 
public class DatabaseConnection { 
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		System.out.println(DatabaseConnection.initializeDatabase());
	}
	public static Connection initializeDatabase() 
		throws SQLException, ClassNotFoundException 
	{ 
		// Initialize all the information regarding 
		// Database Connection 
		String dbDriver = "com.mysql.cj.jdbc.Driver"; 
		String dbURL = "jdbc:mysql:// localhost:3306/"; 
		// Database name to access 
		String dbName = "servletlogin"; 
		String dbUsername = "root"; 
		String dbPassword = "root"; 

		Class.forName(dbDriver); 
		Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 

		return con; 
	} 
} 
