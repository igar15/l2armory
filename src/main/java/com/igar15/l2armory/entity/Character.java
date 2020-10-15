package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.AbstractNamedEntity;
import com.igar15.l2armory.entity.enums.Race;
import com.igar15.l2armory.entity.enums.Sex;
import lombok.Data;

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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "class_id")
    private CharacterClass characterClass;
}
