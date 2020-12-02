package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Developper;
import com.antoinelamoureux.playhouse.repository.DevelopperRepository;


@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/developper")
public class DevelopperController extends AbstractController<Developper>{

	@Autowired
	public DevelopperController(DevelopperRepository repository) {
		super(repository);
	}
	
}