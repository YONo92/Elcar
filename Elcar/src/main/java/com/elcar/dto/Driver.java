package com.elcar.dto;

public class Driver {
	String id;
	String name;
	String img;
	String getdate;
	String carnum;
	String cartype;
	int num;
	int status;
	int deny;
	
	public Driver() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getGetdate() {
		return getdate;
	}

	public void setGetdate(String getdate) {
		this.getdate = getdate;
	}

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getDeny() {
		return deny;
	}

	public void setDeny(int deny) {
		this.deny = deny;
	}

}