package com.newLaundryProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.newLaundryProject.model.LoginAdmin;



@Repository
public interface AdminRepository extends JpaRepository<LoginAdmin, Integer>{

	LoginAdmin findByUserNameAndPassWord(String username, String password);

	
}
