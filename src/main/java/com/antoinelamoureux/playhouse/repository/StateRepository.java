package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.State;

@Repository
public interface StateRepository extends CrudRepository<State, Long> { }