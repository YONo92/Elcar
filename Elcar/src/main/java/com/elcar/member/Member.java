package com.elcar.member;

public class Member {

		String member_id;
		String member_pw;
		String member_name;
		String member_nickname;
		String member_email;
		String member_gender;
		String member_phone;
		String member_birth;
		String member_point;
		String member_license;
		String member_type;


		public Member(String member_id, String member_pw, String member_name, String member_nickname,
				String member_email, String member_gender, String member_phone, String member_birth,
				String member_point, String member_license, String member_type) {
			this.member_id = member_id;
			this.member_pw = member_pw;
			this.member_name = member_name;
			this.member_nickname = member_nickname;
			this.member_email = member_email;
			this.member_gender = member_gender;
			this.member_phone = member_phone;
			this.member_birth = member_birth;
			this.member_point = member_point;
			this.member_license = member_license;
			this.member_type = member_type;
		}


		public String getMember_id() {
			return member_id;
		}


		public void setMember_id(String member_id) {
			this.member_id = member_id;
		}


		public String getMember_pw() {
			return member_pw;
		}


		public void setMember_pw(String member_pw) {
			this.member_pw = member_pw;
		}


		public String getMember_name() {
			return member_name;
		}


		public void setMember_name(String member_name) {
			this.member_name = member_name;
		}


		public String getMember_nickname() {
			return member_nickname;
		}


		public void setMember_nickname(String member_nickname) {
			this.member_nickname = member_nickname;
		}


		public String getMember_email() {
			return member_email;
		}


		public void setMember_email(String member_email) {
			this.member_email = member_email;
		}


		public String getMember_gender() {
			return member_gender;
		}


		public void setMember_gender(String member_gender) {
			this.member_gender = member_gender;
		}


		public String getMember_phone() {
			return member_phone;
		}


		public void setMember_phone(String member_phone) {
			this.member_phone = member_phone;
		}


		public String getMember_birth() {
			return member_birth;
		}


		public void setMember_birth(String member_birth) {
			this.member_birth = member_birth;
		}


		public String getMember_point() {
			return member_point;
		}


		public void setMember_point(String member_point) {
			this.member_point = member_point;
		}


		public String getMember_license() {
			return member_license;
		}


		public void setMember_license(String member_license) {
			this.member_license = member_license;
		}


		public String getMember_type() {
			return member_type;
		}


		public void setMember_type(String member_type) {
			this.member_type = member_type;
		}




		
}
