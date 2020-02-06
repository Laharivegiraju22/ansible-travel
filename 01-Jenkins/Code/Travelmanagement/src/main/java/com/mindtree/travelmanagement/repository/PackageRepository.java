package com.mindtree.travelmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mindtree.travelmanagement.entity.Packages;

@Repository
public interface PackageRepository extends JpaRepository<Packages, Integer> {

	@Query(value="SELECT y FROM Packages y WHERE y.packageName = ?1")
	public Packages findByname(String name);

}
