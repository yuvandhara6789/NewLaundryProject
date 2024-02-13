package com.newLaundryProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newLaundryProject.repository.AdminRepository;



@Service
public class AdminService {
	
	@Autowired
	AdminRepository adminRepository;

	public com.newLaundryProject.model.LoginAdmin authenticate(String username, String password) {
		return adminRepository.findByUserNameAndPassWord(username,password);
	}

}
