package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "weapon")
@Data
public class Weapon extends GradeItem {

    @Column(name = "p_atk")
    private int pAtk;

    @Column(name = "m_atk")
    private int mAtk;

    @Column(name = "soulshots_consume")
    private int soulshotsConsume;

    @Column(name = "spiritshots_consume")
    private int spiritshotsConsume;

    @Column(name = "attack_speed")
    @Enumerated(EnumType.STRING)
    private WeaponAttackSpeed attackSpeed;

    @Column(name = "type")
    @Enumerated(EnumType.STRING)
    private WeaponType type;
}
