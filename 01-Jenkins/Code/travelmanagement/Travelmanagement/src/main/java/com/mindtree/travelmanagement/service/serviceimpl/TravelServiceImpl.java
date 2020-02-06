package com.mindtree.travelmanagement.service.serviceimpl;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.travelmanagement.entity.Customer;
import com.mindtree.travelmanagement.entity.Packages;
import com.mindtree.travelmanagement.repository.CustomerRepository;
import com.mindtree.travelmanagement.repository.PackageRepository;
import com.mindtree.travelmanagement.service.TravelService;

@Service
public class TravelServiceImpl implements TravelService {

	@Autowired
	private PackageRepository packagerepositoryObj;

	@Autowired
	private CustomerRepository customerRepositoryObj;

	@Override
	public String addPackageDetail(Packages packages) {

		packagerepositoryObj.save(packages);
		return "success";
	}

	@Override
	public List<Packages> bookingDetails(Customer customer) {
		customer.setBooking(false);
		customerRepositoryObj.save(customer);

		return packagerepositoryObj.findAll().stream().filter(i -> i.getSeasonPackage().equals(customer.getSeason()))
				.collect(Collectors.toList());
	}

	@Override
	public String addDookingDetails(Customer customer, Packages packages) {

		String name = packages.getPackageName();
		Customer customer2 = customerRepositoryObj.findBycustomerName(customer.getCustomerName());

		customer2.setBooking(true);
		customer2.setPackages(packagerepositoryObj.findByname(name));
		customerRepositoryObj.saveAndFlush(customer2);
		return name;

	}

	@Override
	public List<Packages> viewsPackage() {

		return packagerepositoryObj.findAll();
	}

	@Override
	public Packages getPackagedetails(int id) {

		return packagerepositoryObj.findById(id).get();
	}

	@Override
	public String editPackage(Packages packages) {

		packagerepositoryObj.saveAndFlush(packages);

		return "success";
	}

	@Override
	public List<Packages> displayPackage() {

		return packagerepositoryObj.findAll().stream().filter(i -> i.getFoodStatus().equals("Included"))
				.collect(Collectors.toList());

	}

	@Override
	public List<Customer> displayCustomerEnquired() {

		return customerRepositoryObj.findAll().stream().filter(i -> i.isBooking()).collect(Collectors.toList());
	}

	@Override
	public List<Packages> packagesSorted() {

		return packagerepositoryObj.findAll().stream()
				.sorted(Comparator.comparing(Packages::getPackageTime).thenComparing(Packages::getPackageCost))
				.collect(Collectors.toList());
	}

	@Override
	public List<Customer> displayCustomer() {
		return null;	
	}

	@Override
	public List<Packages> getPackages() {
		
		return packagerepositoryObj.findAll();
		
	}

}
