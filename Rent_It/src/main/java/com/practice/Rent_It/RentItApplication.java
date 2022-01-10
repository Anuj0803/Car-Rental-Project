package com.practice.Rent_It;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan
public class RentItApplication {

	public static void main(String[] args) {
		
		new File(RentController.uploadDirectory).mkdir();
		SpringApplication.run(RentItApplication.class, args);
	}

}
