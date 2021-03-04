package com.antoinelamoureux.playhouse.controllers;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.services.IgdbService;


@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
public class IgdbController {
	private IgdbService igdb;

	public IgdbController() {
		super();
	}


	@RequestMapping(value = "/api/igdb/games", method=RequestMethod.GET, produces={MediaType.APPLICATION_JSON_VALUE})
	public String getIgdbGames() {
		igdb = new IgdbService();
		String games = "";
		try {
			games = igdb.getGames();
			System.out.println(games);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return games;
	}

	public static void main(String[] args) throws Exception {

		IgdbService igdb = new IgdbService();

		String games = "";
		games = igdb.getGames();
		
		System.out.println(games);
	}

}