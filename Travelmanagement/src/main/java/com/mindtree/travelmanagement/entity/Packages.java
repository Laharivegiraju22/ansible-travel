package com.mindtree.travelmanagement.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Packages {

	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private int packageId;
	private String packageName;
	private String  seasonPackage;
	private double packageCost;
	private int packageTime;
	private String foodStatus;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "packages")
	private List<Customer> customers;

	public Packages() {
	}

	public Packages(int packageId, String packageName, String seasonPackage, double packageCost, int packageTime,
			String foodStatus, List<Customer> customers) {
		super();
		this.packageId = packageId;
		this.packageName = packageName;
		this.seasonPackage = seasonPackage;
		this.packageCost = packageCost;
		this.packageTime = packageTime;
		this.foodStatus = foodStatus;
		this.customers = customers;
	}

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getSeasonPackage() {
		return seasonPackage;
	}

	public void setSeasonPackage(String seasonPackage) {
		this.seasonPackage = seasonPackage;
	}

	public double getPackageCost() {
		return packageCost;
	}

	public void setPackageCost(double packageCost) {
		this.packageCost = packageCost;
	}

	public int getPackageTime() {
		return packageTime;
	}

	public void setPackageTime(int packageTime) {
		this.packageTime = packageTime;
	}

	public String getFoodStatus() {
		return foodStatus;
	}

	public void setFoodStatus(String foodStatus) {
		this.foodStatus = foodStatus;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	
	
}
