package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Note;
import com.antoinelamoureux.playhouse.repository.NoteRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/note")
public class NoteController extends AbstractController<Note>{

	@Autowired
	public NoteController(NoteRepository repository) {
		super(repository);
	}
	
}