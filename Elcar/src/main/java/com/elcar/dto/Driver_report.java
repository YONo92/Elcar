package com.elcar.dto;


public class Driver_report {
	
	int num;
	int history_num;
	int category;
	String content;
	String reply;
	int status;
	String singouser;
	String minususer;
	
	public Driver_report(){}
	
	
	public Driver_report(int num, int history_num, int category, String content, String reply, int status, String singouser, 
			String minususer) {
		this.num = num;
		this.history_num = history_num;
		this.category = category;
		this.content = content;
		this.reply = reply;
		this.status = status;
		this.singouser = singouser;
		this.minususer = minususer;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getHistory_num() {
		return history_num;
	}
	public void setHistory_num(int history_num) {
		this.history_num = history_num;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}


	public String getSingouser() {
		return singouser;
	}


	public void setSingouser(String singouser) {
		this.singouser = singouser;
	}


	public String getMinususer() {
		return minususer;
	}

	
	public void setMinususer(String minususer) {
		this.minususer = minususer;
	}
	
}
	
	