package com.elcar.dto;

public class Sinchenglist {
	int num, talge_num;
	String sincheng_id, surak_id;
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
	
	@Override
	public String toString() {
		return "Sinchenglist [num=" + num + ", talge_num=" + talge_num + ", sincheng_id=" + sincheng_id + ", surak_id="
				+ surak_id + "]";
	}
	
	
}
