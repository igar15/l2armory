package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Boots;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

// this annotation below hides this repository
//@RepositoryRestResource(exported = false)

@CrossOrigin()
public interface BootsRepository extends JpaRepository<Boots, Long> {
}

