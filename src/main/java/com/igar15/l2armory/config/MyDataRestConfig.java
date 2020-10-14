package com.igar15.l2armory.config;

import com.igar15.l2armory.entity.*;
import com.igar15.l2armory.entity.Character;
import com.igar15.l2armory.entity.abstracts.AbstractBaseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer {

    @Autowired
    private EntityManager entityManager;

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {

        HttpMethod[] theUnsupportedActions = {HttpMethod.PUT, HttpMethod.POST, HttpMethod.DELETE};

        // disable HTTP methods for CharacterClass: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, CharacterClass.class);

        // disable HTTP methods for Character: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Character.class);

        // disable HTTP methods for Boots: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Boots.class);

        // disable HTTP methods for Chest: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Chest.class);

        // disable HTTP methods for Earning: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Earning.class);

        // disable HTTP methods for Equipment: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Equipment.class);

        // disable HTTP methods for Gloves: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Gloves.class);

        // disable HTTP methods for Helmet: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Helmet.class);

        // disable HTTP methods for Legs: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Legs.class);

        // disable HTTP methods for Necklace: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Necklace.class);

        // disable HTTP methods for Ring: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Ring.class);

        // disable HTTP methods for Shield: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Shield.class);

        // disable HTTP methods for Weapon: POST, PUT, DELETE
        disableHttpMethods(config, theUnsupportedActions, Weapon.class);

        //call an internal helper method for expose entities ids using Spring Data Rest
        exposeIds(config);


    }

    private void disableHttpMethods(RepositoryRestConfiguration config, HttpMethod[] theUnsupportedActions, Class<? extends AbstractBaseEntity> entityClass) {
        config.getExposureConfiguration()
                .forDomainType(entityClass)
                .withItemExposure(((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions)))
                .withCollectionExposure(((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions)));
    }

    private void exposeIds(RepositoryRestConfiguration config) {
        // get a set of all entity classes from the entity manager
        Set<EntityType<?>> entities = entityManager.getMetamodel().getEntities();

        // create an array list of the entity types
        List<Class<?>> entityClasses = new ArrayList<>();

        // get the entity types from the entities
        entities.forEach(entityType -> entityClasses.add(entityType.getJavaType()));

        // expose the entities ids to the array of entity/domain types
        Class[] classes = entityClasses.toArray(new Class[0]);
        config.exposeIdsFor(classes);
    }

}
