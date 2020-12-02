package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.Platform;

@Repository
public interface PlatformRepository extends CrudRepository<Platform, Long> { }
