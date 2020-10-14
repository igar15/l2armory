package com.igar15.l2armory.entity.abstracts;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class ArmorItem extends GradeItem {

    @Column(name = "p_def")
    private int pDef;

    @Column(name = "m_def")
    private int mDef;

    @Column(name = "mp_bonus")
    private int mpBonus;
}
