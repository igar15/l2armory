package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Earring;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface EarringRepository extends JpaRepository<Earring, Long> {
}
