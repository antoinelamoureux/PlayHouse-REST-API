package com.antoinelamoureux.playhouse.controllers;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


import org.springframework.data.repository.CrudRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



public abstract class AbstractController<T> {
	//private Logger logger = LoggerFactory.getLogger(AbstractController.class);

	private CrudRepository<T, Long> repository;

	public AbstractController(CrudRepository<T, Long> repository) {
		this.repository = repository;
	}
	
	@RequestMapping
	public @ResponseBody List<T> getAll() {
        Iterable<T> all = this.repository.findAll();
        List<T> itemsList = new ArrayList<T>();
        all.forEach(itemsList::add);
        return itemsList;
    }
	/*
	public ResponseEntity<List<T>> getAll() {
		System.out.println("GET ALL METHOD");
		System.out.println("DAO :" + repository.getClass() + repository.toString());
		
		try {
			List<T> items = (List<T>) repository.findAll();
			System.out.println("ITEMS :" + items.toString());
			if (items.isEmpty()) {
		        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		      }
			
		      return new ResponseEntity<>(items, HttpStatus.OK);
		} catch (Exception e ) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
	}
	*/
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public  ResponseEntity<T> getById(@PathVariable("id") Long id) {
		try {
			Optional<T> item = repository.findById(id);
			if (!item.isPresent()) {
		        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		      }

		      return new ResponseEntity<>(item.get(), HttpStatus.OK);
		} catch (Exception e ) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}	
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST, consumes={MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<T> create(@RequestBody T item) {
		try {
		repository.save(item);
		return new ResponseEntity<>(item, HttpStatus.CREATED);
		} catch (Exception e) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}	
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.PUT)
	public ResponseEntity<T> update(@PathVariable("id") Long id, @RequestBody T item) {
		Optional<T> itemOptional = repository.findById(id);
		
		if (itemOptional.isPresent()) {
			System.out.print("UPDATE" + itemOptional.get().toString());
			//item.setId(id);
			return new ResponseEntity<>(repository.save(item), HttpStatus.CREATED);
			} else {
				return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
			}	
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public ResponseEntity<HttpStatus> deleteById(@PathVariable("id") Long id) {
		try {
		      repository.deleteById(id);
		      return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		    } catch (Exception e) {
		      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		    }
	}
	
	/*
	@RequestMapping(method=RequestMethod.DELETE)
	public ResponseEntity<HttpStatus> deleteAll() {
		try {
		      repository.deleteAll();
		      return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		    } catch (Exception e) {
		      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		    }
	}
	*/
	
}
