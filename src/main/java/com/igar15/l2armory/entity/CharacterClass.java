package com.igar15.l2armory.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

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
