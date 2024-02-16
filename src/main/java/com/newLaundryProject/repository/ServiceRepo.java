package com.newLaundryProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.newLaundryProject.model.ServiceMaster;

@Repository
public interface ServiceRepo extends JpaRepository<ServiceMaster, Integer>{

}
