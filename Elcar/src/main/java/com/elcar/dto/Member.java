package com.elcar.dto;

public class Member {
	String id;
	String pw;
	String name;
	String nickname;
	String email;
	int gender;
	String phone;
	String birth;
	int point;
	int license;
	int type;
	String gender2;
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", nickname=" + nickname + ", email=" + email
				+ ", gender=" + gender + ", phone=" + phone + ", birth=" + birth + ", point=" + point + ", license="
				+ license + ", type=" + type + ", gender2=" + gender2 + ", getId()=" + getId() + ", getPw()=" + getPw()
				+ ", getName()=" + getName() + ", getNickname()=" + getNickname() + ", getEmail()=" + getEmail()
				+ ", getGender()=" + getGender() + ", getPhone()=" + getPhone() + ", getBirth()=" + getBirth()
				+ ", getPoint()=" + getPoint() + ", getLicense()=" + getLicense() + ", getType()=" + getType()
				+ ", getGender2()=" + getGender2() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public Member() {}
	
	public Member(String id, String pw, String name, String nickname, String email, int gender, String phone, String birth,
			int point, int license, int type) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.birth = birth;
		this.point = point;
		this.license = license;
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getLicense() {
		return license;
	}

	public void setLicense(int license) {
		this.license = license;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	public String getGender2() {
		return gender2;
	}

	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}
	
}
