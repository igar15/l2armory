package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Equipment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin()
public interface EquipmentRepository extends JpaRepository<Equipment, Long> {

    @Query(value = "select e from Equipment e left join fetch e.character c left join fetch c.characterClass left join fetch e.boots",
    countQuery = "select count(e) from Equipment e")
    Page<Equipment> findAll(Pageable pageable);

    @EntityGraph(attributePaths = {"boots", "gloves", "weapon", "chest", "legs", "helmet", "shield", "ring1", "ring2", "necklace", "earring1", "earring2"})
    @Query("select e from Equipment e join fetch e.character c join fetch c.characterClass where c.id=:id")
    Equipment findByCharacterId(@Param("id") Long id);
}
