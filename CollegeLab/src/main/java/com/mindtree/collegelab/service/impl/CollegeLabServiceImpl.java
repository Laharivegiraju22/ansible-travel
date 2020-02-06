package com.mindtree.collegelab.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.collegelab.entity.College;
import com.mindtree.collegelab.entity.Lab;
import com.mindtree.collegelab.entity.Student;
import com.mindtree.collegelab.repository.CollegeRepository;
import com.mindtree.collegelab.repository.LabRepository;
import com.mindtree.collegelab.repository.StudentRepository;
import com.mindtree.collegelab.service.CollegeLabService;
import com.mysql.fabric.xmlrpc.base.Array;

@Service
public class CollegeLabServiceImpl implements CollegeLabService {

	@Autowired private CollegeRepository collegeRepositoryObj;
	@Autowired private StudentRepository studentRepositoryObj;
	@Autowired private LabRepository labRepositoryObj;
	
	@Override
	public String addCollege(College college) {
		
//		college.getLabs().forEach(i ->i.setCollege(college));
	     
		college.getLabs().forEach(i->{
			i.setCollege(college);
			List<Lab> labs=new ArrayList<Lab>();
			labs.add(i);
			i.getStudents().forEach(j->j.setLabs(labs));
		});
	
		collegeRepositoryObj.save(college);
		
		return "success";
	}

	@Override
	public Long displayCountLabs(int studentId) {
		 
		return studentRepositoryObj.findById(studentId).get().getLabs().stream().count();
	}

}
