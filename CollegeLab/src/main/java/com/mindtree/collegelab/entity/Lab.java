package com.mindtree.collegelab.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;


@Entity
public class Lab {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int labId;
	private String labName;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private College college;
	
	@ManyToMany(mappedBy = "labs",cascade = CascadeType.ALL)
	private List<Student> students;

	public Lab() {
		
	}

	public Lab(int labId, String labName, College college, List<Student> students) {
		super();
		this.labId = labId;
		this.labName = labName;
		this.college = college;
		this.students = students;
	}

	public int getLabId() {
		return labId;
	}

	public void setLabId(int labId) {
		this.labId = labId;
	}

	public String getLabName() {
		return labName;
	}

	public void setLabName(String labName) {
		this.labName = labName;
	}

	public College getCollege() {
		return college;
	}

	public void setCollege(College college) {
		this.college = college;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	@Override
	public String toString() {
		return "Lab [labId=" + labId + ", labName=" + labName + ", college=" + college + ", students=" + students + "]";
	}
	
	
}
