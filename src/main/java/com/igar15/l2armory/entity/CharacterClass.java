package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.AbstractNamedEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "character_class")
@Getter
@Setter
public class CharacterClass extends AbstractNamedEntity {

    @Column(name = "description")
    private String description;

//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "characterClass")
//    private List<Character> characters;

}
