package com.utsp4.tanzah.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class KoneksiDatabase {
	
	private String driver, url, user, pass;
	
	public KoneksiDatabase(String driver, String url, String user, String pass){
		this.driver = driver;
		this.url = url;
		this.user = user;
		this.pass = pass;
		
	}
	
	public Connection connect(){
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, user, pass);
			
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (SQLException ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return null;
		
	}
	
	public void disconnect(Connection koneksi){
		if(koneksi != null){
			try {
				koneksi.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	

}
