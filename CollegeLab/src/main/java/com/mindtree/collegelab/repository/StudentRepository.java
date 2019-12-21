package com.mindtree.collegelab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.collegelab.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

}
