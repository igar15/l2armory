package com.igar15.l2armory.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
@Data
public abstract class Item extends AbstractNamedEntity {

    @Column(name = "weight")
    private int weight;

    @Column(name = "price")
    private long price;

    @Column(name = "imageUrl")
    private String imageUrl;

}
