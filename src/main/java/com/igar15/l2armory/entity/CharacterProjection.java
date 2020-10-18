package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.enums.Race;
import com.igar15.l2armory.entity.enums.Sex;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "characterProjection", types = {Character.class})
public interface CharacterProjection {

    Long getId();

    String getName();

    int getLevel();

    Race getRace();

    Sex getSex();

    CharacterClass getCharacterClass();
}
