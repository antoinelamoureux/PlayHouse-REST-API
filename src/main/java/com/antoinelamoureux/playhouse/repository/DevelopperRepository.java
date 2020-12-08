package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Developper;

@Repository
public interface DevelopperRepository extends CrudRepository<Developper, Long> { }
