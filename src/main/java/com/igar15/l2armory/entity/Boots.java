package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "boots")
@Data
public class Boots extends ArmorItem {
}
