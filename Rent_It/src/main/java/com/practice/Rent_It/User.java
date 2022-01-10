package com.practice.Rent_It;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    String Adhar;
    String Name;
    String Phone;
	public String getAdhar() {
		return Adhar;
	}
	public void setAdhar(String adhar) {
		Adhar = adhar;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	@Override
	public String toString() {
		return "User [Adhar=" + Adhar + ", Name=" + Name + ", Phone=" + Phone + "]";
	}
    
}
