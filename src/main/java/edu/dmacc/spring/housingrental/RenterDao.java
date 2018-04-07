package edu.dmacc.spring.housingrental;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class RenterDao {
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("HousingRental");
	
	
	public List<Renter> getAllRenters(){
	EntityManager em = emfactory.createEntityManager();
	em.getTransaction().begin();
	String q = "select u from Renter u";
	TypedQuery<Renter> typedQuery = em.createQuery(q,Renter.class);
	List<Renter> all = typedQuery.getResultList();
	return all;
}
	
	public void insertRenter(Renter renterToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(renterToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
}
