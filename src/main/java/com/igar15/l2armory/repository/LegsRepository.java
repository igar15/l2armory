package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Legs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin()
public interface LegsRepository extends JpaRepository<Legs, Long> {
}
