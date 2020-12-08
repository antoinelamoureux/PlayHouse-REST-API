package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Game;

@Repository
public interface GamesRepository extends CrudRepository<Game, Long> { }
