package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Platform;
import com.antoinelamoureux.playhouse.repository.PlatformRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/platform")
public class PlatformController extends AbstractController<Platform>{

	@Autowired
	public PlatformController(PlatformRepository repository) {
		super(repository);
	}
}
