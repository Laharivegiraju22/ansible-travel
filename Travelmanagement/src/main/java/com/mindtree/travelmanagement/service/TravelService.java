package com.mindtree.travelmanagement.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mindtree.travelmanagement.entity.Customer;
import com.mindtree.travelmanagement.entity.Packages;

@Service
public interface TravelService {

	/**
	 * @param packages adding the package Details
	 * @return
	 */
	String addPackageDetail(Packages packages);

	/**
	 * @param customer adding the booking details
	 * @return
	 */
	List<Packages> bookingDetails(Customer customer);

	/**
	 * @param customer 
	 * @param packages
	 * @return
	 */
	String addDookingDetails(Customer customer, Packages packages);

	/**
	 * @return
	 */
	List<Packages> viewsPackage();

	/**
	 * @param id
	 * @return
	 */
	Packages getPackagedetails(int id);

	/**
	 * @param packages
	 * @return the packages based on id
	 */
	String editPackage(Packages packages);

	/**
	 * @return edit the package
	 */
	List<Packages> displayPackage();

	/**
	 * @return the all packages
	 */
	List<Customer> displayCustomerEnquired();

	 /**
	 * @return the customer who are not booked and just enquired
	 */
	List<Packages> packagesSorted();

	/**
	 * @return the based on sorting the cost and time 
	 */
	List<Customer> displayCustomer();

	List<Packages> getPackages(); 


}
