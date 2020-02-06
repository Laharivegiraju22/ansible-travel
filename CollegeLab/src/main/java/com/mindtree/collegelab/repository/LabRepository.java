package com.mindtree.collegelab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.collegelab.entity.Lab;

@Repository
public interface LabRepository extends JpaRepository<Lab, Integer>
{

}
