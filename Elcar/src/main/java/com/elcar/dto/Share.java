package com.elcar.dto;

public class Share {
	int num;
	int talge_num;
	String sincheng_id;
	String surak_id;
	String date;
	int person;
	String request;
	double start_long;
	double start_lat;
	double goal_long;
	double goal_lat;
	int status;
	String start_name;
	String goal_name;
	String nickname;
	int gender;
	String cartype;
	
	public Share() {
		
	}

	public Share(int num, int talge_num, String sincheng_id, String surak_id, String date, int person, String request,
			double start_long, double start_lat, double goal_long, double goal_lat, int status, String start_name,
			String goal_name, String nickname, int gender, String cartype) {
		super();
		this.num = num;
		this.talge_num = talge_num;
		this.sincheng_id = sincheng_id;
		this.surak_id = surak_id;
		this.date = date;
		this.person = person;
		this.request = request;
		this.start_long = start_long;
		this.start_lat = start_lat;
		this.goal_long = goal_long;
		this.goal_lat = goal_lat;
		this.status = status;
		this.start_name = start_name;
		this.goal_name = goal_name;
		this.nickname = nickname;
		this.gender = gender;
		this.cartype = cartype;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getTalge_num() {
		return talge_num;
	}

	public void setTalge_num(int talge_num) {
		this.talge_num = talge_num;
	}

	public String getSincheng_id() {
		return sincheng_id;
	}

	public void setSincheng_id(String sincheng_id) {
		this.sincheng_id = sincheng_id;
	}

	public String getSurak_id() {
		return surak_id;
	}

	public void setSurak_id(String surak_id) {
		this.surak_id = surak_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int person) {
		this.person = person;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public double getStart_long() {
		return start_long;
	}

	public void setStart_long(double start_long) {
		this.start_long = start_long;
	}

	public double getStart_lat() {
		return start_lat;
	}

	public void setStart_lat(double start_lat) {
		this.start_lat = start_lat;
	}

	public double getGoal_long() {
		return goal_long;
	}

	public void setGoal_long(double goal_long) {
		this.goal_long = goal_long;
	}

	public double getGoal_lat() {
		return goal_lat;
	}

	public void setGoal_lat(double goal_lat) {
		this.goal_lat = goal_lat;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getStart_name() {
		return start_name;
	}

	public void setStart_name(String start_name) {
		this.start_name = start_name;
	}

	public String getGoal_name() {
		return goal_name;
	}

	public void setGoal_name(String goal_name) {
		this.goal_name = goal_name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	
}
