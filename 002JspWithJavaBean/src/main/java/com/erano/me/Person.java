package com.erano.me;

import jakarta.servlet.http.HttpServletRequest;

public class Person {
	private String name;
	private int id;
	private int age;
	
	//javabean'lerin constructorları parametresiz olmalı
	//javabean olma kuralıdır bu
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return this.name;
}
	public void setName(String name) {
		this.name=name;
}
	public void nickVerify(HttpServletRequest request) {
		String hatalar ="";
		if(name==null || name.trim().length() >=16) {
			hatalar +=" kullanıcı adı boş veya 16 karakterden uzun olamaz.";
		}
		if(hatalar.trim().length()>0) {
			request.setAttribute("hatalar", hatalar);
		}
	}
//	public String getName() {
//		return new String(name);
//	}
//	public void setName(String name) {
//		this.name=name.toCharArray();
//	}
	
}
