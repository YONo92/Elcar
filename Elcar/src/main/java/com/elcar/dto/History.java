package com.elcar.dto;

import java.sql.Date;

public class History {
	int num, status, point;
	String giver_id, taker_id, birth, type;
	Date date;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGiver_id() {
		return giver_id;
	}
	public void setGiver_id(String giver_id) {
		this.giver_id = giver_id;
	}
	public String getTaker_id() {
		return taker_id;
	}
	public void setTaker_id(String taker_id) {
		this.taker_id = taker_id;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "History [num=" + num + ", status=" + status + ", point=" + point + ", giver_id=" + giver_id
				+ ", taker_id=" + taker_id + ", birth=" + birth + ", type=" + type + ", date=" + date + "]";
	}
	
}