package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Classification;
import com.antoinelamoureux.playhouse.repository.ClassificationRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/classification")
public class ClassificationController extends AbstractController<Classification>{

	@Autowired
	public ClassificationController(ClassificationRepository repository) {
		super(repository);
	}
	
}
