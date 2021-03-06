package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Shield;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin()
public interface ShieldRepository extends JpaRepository<Shield, Long> {
}
