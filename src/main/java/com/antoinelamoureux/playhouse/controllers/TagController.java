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
import com.antoinelamoureux.playhouse.repository.TagsRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/tags")
public class TagController extends AbstractController<Tag>{

	@Autowired
	private TagsRepository tagRepository;

	@Autowired
	public TagController(TagsRepository repository) {
		super(repository);
	}
	
	@GetMapping("/{id}/tags")
	public List<Game> getAllTagsById(@PathVariable(value = "id") Long id) {
		Tag tag = new Tag();
		try {
		tag = tagRepository.findById(id).get();
		} catch (Exception e) {
			throw new RuntimeException("Error: No game found.");
		}
		
		List<Game> tags = tag.getGamesCollection(); 
		
		return tags;
	}

}