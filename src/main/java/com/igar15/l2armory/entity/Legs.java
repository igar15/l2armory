package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.TypedArmor;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "legs")
@Data
public class Legs extends TypedArmor {

}
