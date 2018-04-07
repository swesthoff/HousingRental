package edu.dmacc.spring.housingrental;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
 

public class UnitDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("HousingRental");
	
	
	public List<Unit> getAllUnits(){
	EntityManager em = emfactory.createEntityManager();
	em.getTransaction().begin();
	String q = "select u from Unit u";
	TypedQuery<Unit> typedQuery = em.createQuery(q,Unit.class);
	List<Unit> all = typedQuery.getResultList();
	return all;
}
	
	public void insertUnit(Unit unitToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(unitToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
}
