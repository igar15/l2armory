package com.igar15.l2armory.entity;

import com.igar15.l2armory.entity.abstracts.AbstractNamedEntity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "server")
public class Server extends AbstractNamedEntity {

}
