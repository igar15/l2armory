package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public class GradeItem extends Item {

    @Column(name = "grade")
    @Enumerated(EnumType.STRING)
    private Grade grade;
}
