package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.Accessory;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ring")
@Data
public class Ring extends Accessory {
}
