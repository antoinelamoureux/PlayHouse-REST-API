package com.antoinelamoureux.playhouse.repository;

import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Game;

@Repository
@Transactional
public interface GamesRepository extends CrudRepository<Game, Long> {
	@Modifying
	@Query("delete from Game g where g.id = ?1")
	void deleteGame(Long id);
	

	@Query(value = "SELECT g FROM Game g WHERE g.title LIKE %:keyword% "
			+ "OR g.description LIKE %:keyword%")
	public Set<Game> searchGames(@Param("keyword") String keyword);

	/*
	@Query(value = "SELECT g FROM Game g INNER JOIN Category c ON g.id = c.id WHERE "
			+ "c.id = :categoryId")
	public List<Game> findGamebyCategory(@Param("userId") Long userId, @Param("categoryId")Long categoryId);
	*/
	
	// SQL : select * from games g inner join user_games on g.id_game = user_games.id_game 
	//inner join users u on user_games.user_id = u.id where u.id = 1 and g.id_category = 1;
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.category.id = :categoryId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyCategory(@Param("userId") Long userId, @Param("categoryId") Long categoryId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.state.id = :stateId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyState(@Param("userId") Long userId, @Param("stateId") Long stateId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.note.id = :noteId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyNote(@Param("userId") Long userId, @Param("noteId") Long noteId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.idDevelopper.id = :developperId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyDevelopper(@Param("userId") Long userId, @Param("developperId") Long developperId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.idEditor.id = :editorId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyEditor(@Param("userId") Long userId, @Param("editorId")Long editorId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.classification.id = :classificationId "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyClassification(@Param("userId") Long userId, @Param("classificationId") Long classificationId);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.releaseDate Like :range "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyDateRange(@Param("userId") Long userId, @Param("range") String range);
	
	@Query(value = "SELECT g FROM Game g JOIN g.userCollection u WHERE "
			+ "u.id = :userId AND "
			+ "g.price Like :range "
			+ "ORDER BY g.releaseDate ASC")
	public List<Game> findGamebyPriceRange(@Param("userId") Long userId, @Param("range") String range);

}
