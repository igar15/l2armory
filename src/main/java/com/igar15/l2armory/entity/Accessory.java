package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class Accessory extends ArmorItem {

    @Column(name = "bonus")
    private String bonus;
}
