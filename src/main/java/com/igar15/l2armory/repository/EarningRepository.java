package com.igar15.l2armory.repository;

import com.igar15.l2armory.entity.Earning;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EarningRepository extends JpaRepository<Earning, Long> {
}