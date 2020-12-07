package com.antoinelamoureux.playhouse;

import javax.annotation.Resource;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.antoinelamoureux.playhouse.services.FilesStorageService;

@SpringBootApplication
public class SpringjwtApplication {
	//@Resource
	//FilesStorageService storageService;

	public static void main(String[] args) {
		SpringApplication.run(SpringjwtApplication.class, args);
	}
	
	/*
	@Override
	  public void run(String... arg) throws Exception {
	    storageService.deleteAll();
	    storageService.init();
	  }
	  */

}
