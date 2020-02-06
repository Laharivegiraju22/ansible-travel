package com.mindtree.collegelab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mindtree.collegelab.entity.College;
import com.mindtree.collegelab.service.CollegeLabService;

@RestController
public class CollegeLabController {

	@Autowired private CollegeLabService serviceObj;
	
	@RequestMapping("/insertCollege")
	public String insertCollege(@RequestBody College college)
	{

		return serviceObj.addCollege(college);
		
	}
	
	@GetMapping("/displayCountLabs/{studentId}")
	public Long  displayCountLabs(@PathVariable int studentId)
	{
		return serviceObj.displayCountLabs(studentId);
		
	}
}
