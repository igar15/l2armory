package com.igar15.l2armory.entity;

import org.springframework.data.rest.core.config.Projection;

@Projection(name = "characterClassProjection", types = {CharacterClass.class})
public interface CharacterClassProjection {

    Long getId();

    String getName();

    String getDescription();

    String getImageUrl();
}
