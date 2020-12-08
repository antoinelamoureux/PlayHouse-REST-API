package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Editor;

@Repository
public interface EditorRepository extends CrudRepository<Editor, Long> { }
