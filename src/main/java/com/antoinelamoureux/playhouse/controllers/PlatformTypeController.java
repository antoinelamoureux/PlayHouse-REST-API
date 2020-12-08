package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.PlatformType;
import com.antoinelamoureux.playhouse.repository.PlatformTypeRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/platformtype")
public class PlatformTypeController extends AbstractController<PlatformType>{

	@Autowired
	public PlatformTypeController(PlatformTypeRepository repository) {
		super(repository);
	}
}

