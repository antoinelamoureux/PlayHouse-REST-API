package com.antoinelamoureux.playhouse.services;

import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
/* 
grant_type=client_credentials&client_secret=0qwdhcsa0z6c7xmpfb096en9azbhvz&client_id=99ldibesqn5wztwl615lto1kf4dkbz
200
{"access_token":"1hxqfm0bosms0i6d577vhw4rpuuycd","expires_in":5394425,"token_type":"bearer"}
curl -X POST 'https://api.igdb.com/v4/games' \
-d 'fields *;' \ 
-H 'Client-ID: 99ldibesqn5wztwl615lto1kf4dkbz' \
-H 'Authorization: Bearer 1hxqfm0bosms0i6d577vhw4rpuuycd' \
-H 'Accept: application/json'
curl -X POST -d 'fields *;' https://api.igdb.com/v4/games \
-H 'Client-ID: 99ldibesqn5wztwl615lto1kf4dkbz' \
-H 'Authorization: Bearer 1hxqfm0bosms0i6d577vhw4rpuuycd' \
-H 'Accept: application/json'
 */

public class HttpClientService {
	private final HttpClient httpClient = HttpClient.newBuilder()
            .version(HttpClient.Version.HTTP_2)
            .build();
	
	private final String CLIENT_ID = "99ldibesqn5wztwl615lto1kf4dkbz";
	private final String CLIENT_SECRET = "0qwdhcsa0z6c7xmpfb096en9azbhvz";
	private final String GRANT_TYPE = "client_credentials";
    
    public String sendTokenRequest() throws Exception {

        // form parameters
        Map<Object, Object> data = new HashMap<>();
        data.put("client_id", CLIENT_ID);
        data.put("client_secret", CLIENT_SECRET);
        data.put("grant_type", GRANT_TYPE);
        //data.put("ts", System.currentTimeMillis());

        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create("https://id.twitch.tv/oauth2/token"))
                .POST(buildFormDataFromMap(data))
                .setHeader("User-Agent", "Java 11 HttpClient Bot") // add request header
                .header("Content-Type", "application/x-www-form-urlencoded")
                .build();

        HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());

        // print status code
        System.out.println(response.statusCode());

        // print response body
        System.out.println(response.body());
        
        return response.body();
    }
    
    public String sendGamesRequest(String accesToken) throws Exception {
            // form parameters
            Map<Object, Object> data = new HashMap<>();
            data.put("Client_ID", CLIENT_ID);
            data.put("Authorization", "Bearer " + accesToken);
            data.put("Accept", "application/json") ;

            byte[] query = "fields *;".getBytes();
            
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create("https://api.igdb.com/v4/games"))// add request header
                    //.POST(HttpRequest.BodyPublishers.ofByteArray(query))
                    .POST(BodyPublishers.ofString("fields name,cover.image_id,storyline,summary,genres.name,platforms.name,themes.name,total_rating,age_ratings,rating,dlcs,status; where platforms = 48 & first_release_date > 1538129354; sort first_release_date asc;"))
                    .headers("Client-ID", CLIENT_ID, "Authorization", "Bearer " + accesToken)
                    //.header("Client_ID", CLIENT_ID)
                    //.header("Authorization", "Bearer " + accesToken)
                    //.header("Accept", "application/json") 
                    .build();
            
            HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());
            
         // print status code
            System.out.println(response.statusCode());

            // print response body
            System.out.println(response.body());
            
            /*
            if (response.statusCode() == 403) {
    		sendTokenRequest();
            }
            */
    		
        
        //return Integer.toString(response.statusCode());
        //return request.headers().toString();
        return response.body();
    }
    
    private static HttpRequest.BodyPublisher buildFormDataFromMap(Map<Object, Object> data) {
        var builder = new StringBuilder();
        for (Map.Entry<Object, Object> entry : data.entrySet()) {
            if (builder.length() > 0) {
                builder.append("&");
            }
            builder.append(URLEncoder.encode(entry.getKey().toString(), StandardCharsets.UTF_8));
            builder.append("=");
            builder.append(URLEncoder.encode(entry.getValue().toString(), StandardCharsets.UTF_8));
        }
        System.out.println(builder.toString());
        return HttpRequest.BodyPublishers.ofString(builder.toString());
    }
 /*   
    public static void main(String[] args) throws Exception {
    	System.out.println("******** REQUEST ********");
    	HttpClientService http = new HttpClientService();
    	//String token = http.sendTokenRequest();
		String response = http.sendGamesRequest("jjudfekh565jwip1oul2ax2uf8pins");
		try {
			System.out.println(response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	*/
}
