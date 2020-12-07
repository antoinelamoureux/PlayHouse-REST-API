package com.antoinelamoureux.playhouse.models;

public class DataRequest {
	private Long id;
	private Game game;
	
	public DataRequest(Long id, Game game) {
		this.id = id;
		this.game = game;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Game getGame() {
		return game;
	}

	public void setGame(Game game) {
		this.game = game;
	}
	
	
	
}