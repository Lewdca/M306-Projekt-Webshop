package ch.bbzw.m306.Webshop.business;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ch.bbzw.m306.Webshop.data.Person;

@Repository
public class testDao {
    
    @PersistenceContext(name = "webshopPU")
    private EntityManager entityManager;

    public List<Person> getAll(){
        TypedQuery<Person> query = this.entityManager.createQuery("SELECT * FROM Person", Person.class);
        return query.getResultList();
    }
}
