package com.mindtree.travelmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mindtree.travelmanagement.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	@Query(value="SELECT x FROM Customer x WHERE x.customerName= ?1")
	public Customer findBycustomerName(String custmerName);

}
