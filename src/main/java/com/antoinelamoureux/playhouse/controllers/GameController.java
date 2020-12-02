package com.antoinelamoureux.playhouse.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Game;
import com.antoinelamoureux.playhouse.models.Tag;
import com.antoinelamoureux.playhouse.repository.GamesRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/games")
public class GameController extends AbstractController<Game>{

	@Autowired
	private GamesRepository gameRepository;

	@Autowired
	public GameController(GamesRepository repository) {
		super(repository);
	}
	
	@GetMapping("/{id}/tags")
	public List<Tag> getAllTagsById(@PathVariable(value = "id") Long id) {
		Game game = gameRepository.findById(id).get();
		List<Tag> tags = game.getTagsCollection(); 
		
		return tags;
	}

}