package com.antoinelamoureux.playhouse.controllers;

import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.DataRequest;
import com.antoinelamoureux.playhouse.models.Game;
import com.antoinelamoureux.playhouse.models.Tag;
import com.antoinelamoureux.playhouse.models.User;
import com.antoinelamoureux.playhouse.payload.response.MessageResponse;
import com.antoinelamoureux.playhouse.repository.GamesRepository;
import com.antoinelamoureux.playhouse.repository.UserRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/games")
public class GameController extends AbstractController<Game>{
	@Autowired
	UserRepository userRepository;

	@Autowired
	private GamesRepository gameRepository;

	@Autowired
	public GameController(GamesRepository repository, UserRepository userRepository) {
		super(repository);
	}
	
	@RequestMapping(method=RequestMethod.POST, consumes={MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<?> addGame(@Valid @RequestBody DataRequest data) {
		try {
		System.out.println(data);
		
		Long id = data.getId();
		Game game = data.getGame();
		
		System.out.println(id);
		System.out.println(game.getTitle());
		System.out.println(game.getAddDate());
		
		User user = userRepository.findById(id).get();
		Set<Game> games = user.getGames(); ;
		games.add(game);
		/*
		Iterator<Game> iterator = games.iterator();   
		
		while(iterator.hasNext()){
			game = iterator.next();
	    }  
	    */ 
		
		System.out.println(games);
		
		
		try {
			gameRepository.save(game);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
			
		user.setGames(games);
		System.out.println(user.getGames());
		
		try {	
		userRepository.save(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return ResponseEntity.ok(new MessageResponse("User registered successfully!"));
	}
	
	@GetMapping("/user/{id}")
	public Set<Game> getGamesByUserId(@PathVariable(value = "id") Long id) {
		User user = userRepository.findById(id).get();
		Set<Game> games = user.getGames(); 
		for (Game game: games) {
			System.out.println(game.getTitle());
		}
		
		return games;
	}
	
	@GetMapping("/{id}/tags")
	public List<Tag> getAllTagsById(@PathVariable(value = "id") Long id) {
		Game game = gameRepository.findById(id).get();
		List<Tag> tags = game.getTagsCollection(); 
		
		return tags;
	}

}