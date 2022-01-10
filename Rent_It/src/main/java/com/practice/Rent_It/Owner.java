package com.practice.Rent_It;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Owner {
	@Id
	private String Car_Number;
	private String Name;
	private String Car_Name;
	private int seats;
	private String Anumber;
	private String Owner_Phone;
	private int Price;
	private String Photo;

	public String getCar_Number() {
		return Car_Number;
	}
	public void setCar_Number(String car_Number) {
		Car_Number = car_Number;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAnumber() {
		return Anumber;
	}
	public void setAnumber(String anumber) {
		Anumber = anumber;
	}
	public String getOwner_Phone() {
		return Owner_Phone;
	}
	public void setOwner_Phone(String owner_Phone) {
		Owner_Phone = owner_Phone;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getPhoto() {
		return Photo;
	}
	public void setPhoto(String photo) {
		Photo = photo;
	}
	
	public String getCar_Name() {
		return Car_Name;
	}
	public void setCar_Name(String car_Name) {
		Car_Name = car_Name;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	
	@Override
	public String toString() {
		return "Owner [Car_Number=" + Car_Number + ", Name=" + Name + ", Car_Name=" + Car_Name + ", seats=" + seats
				+ ", Anumber=" + Anumber + ", Owner_Phone=" + Owner_Phone + ", Price=" + Price + ", Photo=" + Photo
				+ "]";
	}
	
	
}
