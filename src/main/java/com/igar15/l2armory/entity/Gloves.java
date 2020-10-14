package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "gloves")
@Data
public class Gloves extends ArmorItem {
}
