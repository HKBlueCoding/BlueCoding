package com.hk.user.vo;

import java.util.Date;

public class UserVO {

	// private Attribute
	private String id;
	private String pwd;
	private String find;
	private String name;
	private int coin;
	private String nick;
	private String email;
	private Date birth;
	private Date joinDate;
	private int pageNO;
	private String phone;
	private int gauge;
	private String profile;
	private int prohibitLV;
	private String admin;
	
	// Getter & Setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getFind() {
		return find;
	}
	public void setFind(String find) {
		this.find = find;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCoin() {
		return coin;
	}
	public void setCoin(int coin) {
		this.coin = coin;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getGauge() {
		return gauge;
	}
	public void setGauge(int gauge) {
		this.gauge = gauge;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public int getProhibitLV() {
		return prohibitLV;
	}
	public void setProhibitLV(int prohibitLV) {
		this.prohibitLV = prohibitLV;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
	// toString()
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pwd=" + pwd + ", find=" + find + ", name=" + name + ", coin=" + coin + ", nick="
				+ nick + ", email=" + email + ", birth=" + birth + ", joinDate=" + joinDate + ", pageNO=" + pageNO
				+ ", phone=" + phone + ", gauge=" + gauge + ", profile=" + profile + ", prohibitLV=" + prohibitLV
				+ ", admin=" + admin + "]";
	}
	
	
}
