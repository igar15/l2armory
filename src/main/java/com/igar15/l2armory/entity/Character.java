package com.igar15.l2armory.entity;

import lombok.Data;
import org.hibernate.annotations.BatchSize;

import javax.persistence.*;

@Entity
@Table(name = "character")
@Data
public class Character extends AbstractNamedEntity {

    @Column(name = "level")
    private int level;

    @Column(name = "race")
    @Enumerated(EnumType.STRING)
    private Race race;

    @Column(name = "sex")
    @Enumerated(EnumType.STRING)
    private Sex sex;

    @ManyToOne()
    @JoinColumn(name = "class_id")
    private CharacterClass characterClass;
}
