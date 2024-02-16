package com.newLaundryProject.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.newLaundryProject.service.MasterService;

@Controller
public class MasterController {
	
	@Autowired
	MasterService masterService;
	
	@GetMapping("/getservicePage")
	public String getservicePage()
	{
		return "servicePage";
	}

}
