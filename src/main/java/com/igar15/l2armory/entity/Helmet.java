package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.ArmorItem;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "helmet")
@Data
public class Helmet extends ArmorItem {
}
