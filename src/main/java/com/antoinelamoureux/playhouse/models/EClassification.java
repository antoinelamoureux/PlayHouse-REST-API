package com.antoinelamoureux.playhouse.models;

public enum EClassification {
	PEGI3("PEGI3"),
	PEGI7("PEGI7"),
	PEGI12("PEGI12"),
	PEGI16("PEGI16"),
	PEGI18("PEGI18");
	
	public final String label;

	private EClassification(String label) {
		this.label = label;
	}
}
