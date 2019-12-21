package com.mindtree.travelmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.travelmanagement.entity.Customer;
import com.mindtree.travelmanagement.entity.Packages;
import com.mindtree.travelmanagement.service.TravelService;

@Controller
public class AppController {
	
	@Autowired TravelService serviceObj;
	
	@RequestMapping("/")
	public String index()
	{
		return "index";
		
	}
	
	@RequestMapping("/admin")
	public  String admin()
	{
		return "admin";
	}
	
	@RequestMapping("/addpackage")
	public String addpackage()
	{
		return "addpackage";
	}
	
	
	@RequestMapping("/addPackageDetail")
	public String addPackageDetail(Packages packages)
	{
		
		serviceObj.addPackageDetail(packages);
		return "admin";
	}
	
	@RequestMapping("/customerBooking")
	public String customerBooking()
	{
		return "customerBooking";
	}
	
	@RequestMapping("/bookingDetails")
	public String bookingDetails( Customer customer,Model model)
	{
		
		model.addAttribute("customers", customer);
		model.addAttribute("packagedetails", serviceObj.bookingDetails(customer));

		return "customerBooking";
	}
	
	@RequestMapping("/addbookingdetails")
	public String addbookingdetails(Customer customer,Packages packages)
	{
		 serviceObj.addDookingDetails(customer,packages);
		 return "admin";
	}
	
	@RequestMapping("/viewspackage")
	public String updatepackage(Model model)
	{
		model.addAttribute("packagedetails", serviceObj.viewsPackage());
		
		return "displaypackage";
	}
	
	@RequestMapping(path="/update")
	public String  update(@RequestParam int id,Model model)
	{
		model.addAttribute("packagedetails",serviceObj.getPackagedetails(id));
		
		return "update";
	}
	
	@RequestMapping("/editPackage")
	public String editPackage(Packages packages)
	{
		 serviceObj.editPackage(packages);
		 return "admin";
	}
	
	@RequestMapping("/displayPackage")
	public String displayPackage(Model model)
	{
		model.addAttribute("packagedetails", serviceObj.displayPackage());
		 return "foodstatus";
	}
	
	@RequestMapping("/displayCustomerEnquired")
	public String displayCustomerEnquired(Model model)
	{
		model.addAttribute("customers", serviceObj.displayCustomerEnquired());
		 return "DisplayCustomerEnquired";
	}
	
	@RequestMapping("/packagesSorted")
	public String packagesSorted(Model model)
	{
		model.addAttribute("packagedetails", serviceObj.packagesSorted());
		 return "packagesSorted";
	}
	@RequestMapping("/displayCustomer")
	public String displayCustomer(Model model)
	{
		model.addAttribute("customer", serviceObj.displayCustomer());
		 return "displayCustomer";
	}
	
	@GetMapping("/getpackages")
	public ResponseEntity<List<Packages>> getPackages()
	{
		
		return new ResponseEntity<List<Packages>>(serviceObj.getPackages(),HttpStatus.OK);
	}

}
