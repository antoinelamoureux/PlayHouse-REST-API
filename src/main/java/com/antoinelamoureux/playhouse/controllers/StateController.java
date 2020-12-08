package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.State;
import com.antoinelamoureux.playhouse.repository.StateRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/state")
public class StateController extends AbstractController<State>{

	@Autowired
	public StateController(StateRepository repository) {
		super(repository);
	}
	
}
