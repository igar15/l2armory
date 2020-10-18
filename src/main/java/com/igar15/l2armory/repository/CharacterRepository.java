package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Character;
import com.igar15.l2armory.entity.CharacterProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

//@RepositoryRestResource(excerptProjection = CharacterProjection.class)
@CrossOrigin()
public interface CharacterRepository extends JpaRepository<Character, Long> {

    // override this method from PagingAndSorting interface -> add @EntityGraph to avoid (N+1) select issue
    @EntityGraph(attributePaths = "characterClass")
    Page<Character> findAll(Pageable pageable);

    @EntityGraph(attributePaths = "characterClass")
    Page<Character> findAllByCharacterClassId(@Param("id") Long id, Pageable pageable);

    @EntityGraph(attributePaths = "characterClass")
    Page<Character> findAllByNameContainingIgnoreCase(@Param("name") String name, Pageable pageable);
}
