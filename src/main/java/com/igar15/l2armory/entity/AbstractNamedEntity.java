package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class AbstractNamedEntity extends AbstractBaseEntity {

    @Column(name = "name")
    private String name;
}
