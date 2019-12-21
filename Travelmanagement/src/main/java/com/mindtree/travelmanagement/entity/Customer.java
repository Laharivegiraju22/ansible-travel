package com.mindtree.travelmanagement.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private int customerId;
	private String customerName;
	private String emailId;
	private double phoneNumber;
	private String season;
	private boolean booking;
	
	@ManyToOne
	private Packages packages;

	public Customer() {
	}

	public Customer(int customerId, String customerName, String emailId, double phoneNumber, String season,
			boolean booking, Packages packages) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.emailId = emailId;
		this.phoneNumber = phoneNumber;
		this.season = season;
		this.booking = booking;
		this.packages = packages;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public double getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(double phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public boolean isBooking() {
		return booking;
	}

	public void setBooking(boolean booking) {
		this.booking = booking;
	}

	public Packages getPackages() {
		return packages;
	}

	public void setPackages(Packages packages) {
		this.packages = packages;
	}

	
	
}
