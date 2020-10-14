package com.igar15.l2armory.entity.abstracts;

import com.igar15.l2armory.entity.enums.Grade;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class GradeItem extends Item {

    @Column(name = "grade")
    @Enumerated(EnumType.STRING)
    private Grade grade;
}
