package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Editor;
import com.antoinelamoureux.playhouse.repository.EditorRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/editor")
public class EditorController extends AbstractController<Editor>{

	@Autowired
	public EditorController(EditorRepository repository) {
		super(repository);
	}
	
}