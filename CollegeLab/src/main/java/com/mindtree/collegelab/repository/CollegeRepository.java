package com.mindtree.collegelab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.collegelab.entity.College;

@Repository
public interface CollegeRepository extends JpaRepository<College, Integer>  {

}
