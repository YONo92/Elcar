package com.elcar.dto;

public class Board {
	int num;
	String mem_id;
	String location;
	String title;
	int type;
	String content;
	String img;
	
	public  Board() {}
	
	public Board(int num, String mem_id, String location, String title, int type, String content, String img) {
		this.num = num;
		this.mem_id = mem_id;
		this.location = location;
		this.title = title;
		this.type = type;
		this.content = content;
		this.img = img;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
}
