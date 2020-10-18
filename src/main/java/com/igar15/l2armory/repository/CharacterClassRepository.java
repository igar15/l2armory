package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.CharacterClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin()
@RepositoryRestResource(path = "character-class")
public interface CharacterClassRepository extends JpaRepository<CharacterClass, Long> {
}
