package com.newLaundryProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;



@SpringBootApplication
@EnableConfigurationProperties({
	
})
public class NewLaundryProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(NewLaundryProjectApplication.class, args);
	}

}
