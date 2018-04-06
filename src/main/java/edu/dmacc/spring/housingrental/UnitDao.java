package edu.dmacc.spring.housingrental;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class UnitDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("HousingRental");
	
	public void insertUnit(Unit unitToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(unitToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
}
