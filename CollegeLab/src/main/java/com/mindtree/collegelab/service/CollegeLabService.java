package com.mindtree.collegelab.service;

import org.springframework.stereotype.Service;

import com.mindtree.collegelab.entity.College;

@Service
public interface CollegeLabService {

	/**
	 * @param college inserting colleges , labs and students
	 * @return the success message
	 */
	String addCollege(College college);

	/**
	 * @param studentId 
	 * @return counting  the number of students linked a lab
	 */
	Long displayCountLabs(int studentId);

}
