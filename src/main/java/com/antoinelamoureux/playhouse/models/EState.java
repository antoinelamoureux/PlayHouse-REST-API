package com.antoinelamoureux.playhouse.models;

public enum EState {
	New("New"),
	Mint("Mint"),
	VeryGood("Very Good"),
	Good("Good"),
	Correct("Correct"),
	Gamer("Gamer");
	
	public final String label;

	private EState(String label) {
		this.label = label;
	}
}
