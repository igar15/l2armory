package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "equipment")
@Data
public class Equipment extends AbstractBaseEntity {

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "character_id")
    private Character character;

    @ManyToOne
    @JoinColumn(name = "weapon_id")
    private Weapon weapon;

    @ManyToOne
    @JoinColumn(name = "chest_id")
    private Chest chest;

    @ManyToOne
    @JoinColumn(name = "legs_id")
    private Legs legs;

    @ManyToOne
    @JoinColumn(name = "boots_id")
    private Boots boots;

    @ManyToOne
    @JoinColumn(name = "gloves_id")
    private Gloves gloves;

    @ManyToOne
    @JoinColumn(name = "helmet_id")
    private Helmet helmet;

    @ManyToOne
    @JoinColumn(name = "shield_id")
    private Shield shield;

    @ManyToOne
    @JoinColumn(name = "ring1_id")
    private Ring ring1;

    @ManyToOne
    @JoinColumn(name = "ring2_id")
    private Ring ring2;

    @ManyToOne
    @JoinColumn(name = "necklace_id")
    private Necklace necklace;

    @ManyToOne
    @JoinColumn(name = "earning1_id")
    private Earning earning1;

    @ManyToOne
    @JoinColumn(name = "earning2_id")
    private Earning earning2;

}
