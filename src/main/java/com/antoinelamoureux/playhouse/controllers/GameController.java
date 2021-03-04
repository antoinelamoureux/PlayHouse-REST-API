package com.antoinelamoureux.playhouse.controllers;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.transaction.Transactional;
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
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	private User user;

	@Autowired
	public GameController(GamesRepository repository, UserRepository userRepository) {
		super(repository);
	}
	
	@RequestMapping(method=RequestMethod.POST, consumes={MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<?> addGame(@Valid @RequestBody DataRequest data) {
		try {
		System.out.println(data);
		
		Long idUser = data.getId();
		Game game = data.getGame();
		
		System.out.println("********** CREATE *************");
		System.out.println(idUser);
		System.out.println(game.getTitle());
		System.out.println(game.getDescription());
		System.out.println(game.getAddDate());
		System.out.println(game.getCover());
		System.out.println("********** CATEGORY *************");
		System.out.println(game.getCategory().getId());
		System.out.println(game.getClass());
		System.out.println(game.getClassification().getId());
		System.out.println(game.getId());
		System.out.println(game.getNote());
		System.out.println(game.getReleaseDate());
		System.out.println(game.getPrice());
		System.out.println(game.getState().getId());
		System.out.println(game.getIdDevelopper());
		System.out.println(game.getIdEditor());
		System.out.println(game.getTagsCollection());
		System.out.println(game.getUserCollection());
		
		user = userRepository.findById(idUser).get();
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
	
	@RequestMapping(value="/user/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public Set<Game> getGamesByUserId(@PathVariable(value = "id") Long id) {
		user = userRepository.findById(id).get();
		Set<Game> games = user.getGames(); 
		for (Game game : games) {
			System.out.println(game.getTitle());
		}
		
		return games;
	}
	
	@Transactional
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	public ResponseEntity<HttpStatus> deleteGameById(@PathVariable("id") Long id) {
		System.out.println("********** DELETE *************");
		
		try {
			Game game = gameRepository.findById(id).get();
			user.getGames().remove(game);
			//List<Long> games = user.getGames().stream().map(Game::getId).collect(Collectors.toList());
			List<String> userGames = user.getGames().stream().map(g -> g.getTitle()).collect(Collectors.toList());
			
			for (String title : userGames) {
				System.out.println(title);
			}
			
			game.getUserCollection().remove(user);

			System.out.println("********** ID *************" + id);
			//gameRepository.delete(game);
			gameRepository.deleteGame(id);
		      return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		    } catch (Exception e) {
		      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		   }
	}
	
	@RequestMapping(value="/category/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByCategoryId(@PathVariable(value = "id") Long categoryId, Long userId) {
		/*
		Session session = HibernateUtil.getHibernateSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Game> cr = cb.createQuery(Game.class);
		Root<Game> root = cr.from(Game.class);
		cr.select(root).where(cb.);
		
		Query<Game> query = session.createQuery(cr);
		List<Game> results = query.getResultList();
		*/
		
		System.out.println(userId);

		List<Game> games = gameRepository.findGamebyCategory(userId, categoryId);

		for (Game game : games) {
			System.out.println(game.getTitle());
		}
		
		return games;
	}
	
	@RequestMapping(value="/search/{keyword}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public Set<Game> searchGames(@PathVariable("keyword") String keyword) {
		System.out.println("************** SEARCH ****************");
		Set<Game> games = gameRepository.searchGames(keyword);
		return games;
	}
	
	@RequestMapping(value="/note/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByNoteId(@PathVariable(value = "id") Long noteId, Long userId) {
		List<Game> games = gameRepository.findGamebyNote(userId, noteId);
		return games;
	}
	
	@RequestMapping(value="/state/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByStateId(@PathVariable(value = "id") Long stateId, Long userId) {
		List<Game> games = gameRepository.findGamebyState(userId, stateId);
		return games;
	}
	
	@RequestMapping(value="/developper/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByDevelopperId(@PathVariable(value = "id") Long developperId, Long userId) {
		List<Game> games = gameRepository.findGamebyDevelopper(userId, developperId);
		return games;
	}
	
	@RequestMapping(value="/editor/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByEditorId(@PathVariable(value = "id") Long editorId, Long userId) {
		List<Game> games = gameRepository.findGamebyEditor(userId, editorId);
		return games;
	}
	
	@RequestMapping(value="/classification/{id}", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByClassificationId(@PathVariable(value = "id") Long classificationId, Long userId) {
		List<Game> games = gameRepository.findGamebyClassification(userId, classificationId);
		return games;
	}
	
	@RequestMapping(value="/date", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByDateRange(@Valid @RequestBody String dateRange, Long userId) {
		List<Game> games = gameRepository.findGamebyDateRange(userId, dateRange);
		return games;
	}
	
	@RequestMapping(value="/price", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public List<Game> getGamesByPriceRange(@Valid @RequestBody String priceRange, Long userId) {
		List<Game> games = gameRepository.findGamebyDateRange(userId, priceRange);
		return games;
	}
	
	@GetMapping("/{id}/tags")
	public List<Tag> getAllTagsById(@PathVariable(value = "id") Long id) {
		Game game = gameRepository.findById(id).get();
		List<Tag> tags = game.getTagsCollection(); 
		
		return tags;
	}
	

}