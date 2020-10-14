package com.igar15.l2armory.entity.abstracts;

import com.igar15.l2armory.entity.abstracts.ArmorItem;
import com.igar15.l2armory.entity.enums.ArmorType;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class TypedArmor extends ArmorItem {

    @Column(name = "type")
    @Enumerated(EnumType.STRING)
    private ArmorType type;
}
