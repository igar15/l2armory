package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.ArmorItem;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "shield")
@Data
public class Shield extends ArmorItem {

    @Column(name = "chance_to_parry")
    private int chanceToParry;
}
