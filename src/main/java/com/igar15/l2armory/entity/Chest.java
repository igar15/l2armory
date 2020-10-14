package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "chest")
@Data
public class Chest extends TypedArmor {
}
