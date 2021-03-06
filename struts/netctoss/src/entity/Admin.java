package entity;

import java.io.Serializable;
import java.util.Date;

public class Admin implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String admin_code;
	private String password;
	private String name;
	private String telephone;
	private String email;
	private Date registerdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(String adminCode) {
		admin_code = adminCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	
}
