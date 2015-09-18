package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DriveDetail {
	private String drive_name;
	  private int technical;
	  private int verbal;
	  private int aptitude;
	  private int logical;
	  private int total;
	  
	
  public String getDrive_name() {
		return drive_name;
	}
	public void setDrive_name(String drive_name) {
		this.drive_name = drive_name;
	}
	public int getTechnical() {
		return technical;
	}
	public void setTechnical(int technical) {
		this.technical = technical;
	}
	public int getVerbal() {
		return verbal;
	}
	public void setVerbal(int verbal) {
		this.verbal = verbal;
	}
	public int getAptitude() {
		return aptitude;
	}
	public void setAptitude(int aptitude) {
		this.aptitude = aptitude;
	}
	public int getLogical() {
		return logical;
	}
	public void setLogical(int logical) {
		this.logical = logical;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}