package com.antoinelamoureux.playhouse.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Game;

@Repository
@Transactional
public interface GamesRepository extends CrudRepository<Game, Long> {
	@Modifying
	@Query("delete from Game g where g.id = ?1")
	void deleteGame(Long id);
}
