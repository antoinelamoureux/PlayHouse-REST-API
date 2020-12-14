package com.antoinelamoureux.playhouse.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Category;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> { }
