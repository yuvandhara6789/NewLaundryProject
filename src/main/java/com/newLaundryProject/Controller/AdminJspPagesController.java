package com.newLaundryProject.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.newLaundryProject.model.LoginAdmin;
import com.newLaundryProject.service.AdminService;



@Controller
public class AdminJspPagesController {
	
@Autowired
AdminService adminService;

//SignIn page for Admin	
@GetMapping("/")
public String SignIn(Model model) {
	return "signin";
}

//Login Mapping for Username and password for Admin
@PostMapping("/adminLogin")
public String adminLogin(@ModelAttribute("login") LoginAdmin loginAdmin,Model model) {
	String username = loginAdmin.getUserName();
	String password = loginAdmin.getPassWord();
	
	loginAdmin = adminService.authenticate(username,password);
	if(loginAdmin !=null) {
		return "index";
	}
	else {
		String errorMsg = "Wrong Credential..!!";
		model.addAttribute("errorMsg", errorMsg);
		return "signin";
	}
}

  @GetMapping("/addItems")
  public String addItems() {
	  return "AddItems";
  }

//LogOut Api
@GetMapping("/logout")
public String logout() {
	return "signin";
}



}
