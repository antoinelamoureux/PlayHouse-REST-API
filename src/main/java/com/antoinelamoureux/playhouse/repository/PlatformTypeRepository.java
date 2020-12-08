package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.antoinelamoureux.playhouse.models.PlatformType;

@Repository
public interface PlatformTypeRepository extends CrudRepository<PlatformType, Long> { }