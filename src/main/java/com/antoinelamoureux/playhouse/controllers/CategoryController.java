package com.antoinelamoureux.playhouse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.antoinelamoureux.playhouse.models.Category;
import com.antoinelamoureux.playhouse.repository.CategoryRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/category")
public class CategoryController extends AbstractController<Category>{

	@Autowired
	public CategoryController(CategoryRepository repository) {
		super(repository);
	}
	
}