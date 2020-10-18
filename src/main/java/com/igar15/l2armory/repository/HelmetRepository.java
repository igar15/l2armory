package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Helmet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin()
public interface HelmetRepository extends JpaRepository<Helmet, Long> {
}
