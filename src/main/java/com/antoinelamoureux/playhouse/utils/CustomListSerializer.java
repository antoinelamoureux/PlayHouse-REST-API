package com.antoinelamoureux.playhouse.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.antoinelamoureux.playhouse.models.Platform;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

public class CustomListSerializer extends StdSerializer<List<Platform>>{

	private static final long serialVersionUID = 1L;

	public CustomListSerializer() {
	        this(null);
	    }

	    public CustomListSerializer(Class<List<Platform>> t) {
	        super(t);
	    }

	    @Override
	    public void serialize(
	      List<Platform> items, 
	      JsonGenerator generator, 
	      SerializerProvider provider) 
	      throws IOException, JsonProcessingException {
	        
	    	generator.writeStartObject();
	        List<Long> id = new ArrayList<>();
	        for (Platform item : items) {
	            id.add(item.getId());
	        }
	        generator.writeObjectField("id", id);
	        
	        List<String> name = new ArrayList<>();
	        for (Platform item : items) {
	            name.add(item.getName());
	        }
	        generator.writeObjectField("name", name);
	        generator.writeEndObject();
	    }
	  }

