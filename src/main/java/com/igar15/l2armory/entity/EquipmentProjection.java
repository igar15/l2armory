package com.igar15.l2armory.entity;

import org.springframework.data.rest.core.config.Projection;

@Projection(name = "equipmentProjection", types = {Equipment.class})
public interface EquipmentProjection {

    Long getId();

    CharacterProjection getCharacter();

    Weapon getWeapon();

    Chest getChest();

    Legs getLegs();

    Boots getBoots();

    Gloves getGloves();

    Helmet getHelmet();

    Shield getShield();

    Ring getRing1();

    Ring getRing2();

    Necklace getNecklace();

    Earring getEarring1();

    Earring getEarring2();
}
