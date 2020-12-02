package com.antoinelamoureux.playhouse.repository;

import org.springframework.data.repository.CrudRepository;
import com.antoinelamoureux.playhouse.models.Classification;

public interface ClassificationRepository extends CrudRepository<Classification, Long> { }
