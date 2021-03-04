package com.antoinelamoureux.playhouse.services;

import org.springframework.web.client.HttpClientErrorException;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class IgdbService {
	private static HttpClientService httpClient;
	//private String accessToken = "1hxqfm0bosms0i6d577vhw4rpuuycd";
	private String accessToken = "jjudfekh565jwip1oul2ax2uf8pins";
	
	public String getAccessToken() {
		try {
			accessToken = httpClient.sendTokenRequest();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return accessToken;
		
	}
	
	public String getGames() throws Exception {
		String results = "";
		
		httpClient = new HttpClientService();
		
		//System.out.println(this.getAccessToken());
		
		//this.parseJSON(this.getAccessToken());
		/*
		try {
		accessToken = httpClient.sendTokenRequest();
		} catch (HttpClientErrorException e) {
			System.out.println(e.getCause().getMessage());
		}
		*/
		
		try {
			results = httpClient.sendGamesRequest(this.accessToken);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(results);
		return results;
	}
	
	private String parseJSON(String json) {
		System.out.println(json);
		JsonObject jsonObject = JsonParser.parseString(json).getAsJsonObject();
		this.accessToken = jsonObject.getAsJsonObject().get("access_token").getAsString();
		
		System.out.println(this.accessToken);
		
		return this.accessToken;
	}
	
/*
    public static void main(String[] args) throws Exception {
    	System.out.println("******** REQUEST ********");
    	IgdbService igdb = new IgdbService();
		String response = igdb.getGames();
		try {
			System.out.println(response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
*/
	
}
