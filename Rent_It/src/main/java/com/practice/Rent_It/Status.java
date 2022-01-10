package com.practice.Rent_It;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Status {

	@Id
	String Numc;
	String Status;
	String reason;
	public String getNumc() {
		return Numc;
	}
	public void setNumc(String numc) {
		Numc = numc;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "Status [Numc=" + Numc + ", Status=" + Status + ", reason=" + reason + "]";
	}
	
}
