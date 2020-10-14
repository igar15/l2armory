package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.enums.Race;
import com.igar15.l2armory.entity.enums.Sex;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "inLineCharacterClass", types = {Character.class})
public interface InLineCharacterClass {

    Long getId();

    String getName();

    int getLevel();

    Race getRace();

    Sex getSex();

    CharacterClass getCharacterClass();
}
